/* Sun-$Revision: 30.10 $ */

/* Copyright 1992-2012 AUTHORS.
   See the LICENSE file for license information. */

# ifdef INTERFACE_PRAGMAS
  # pragma interface
# endif


// Classify primitives according to kinds of optimizations that can be
// applied.
enum primType {
  InternalPrimitive,       // Prim. only generated by compiler, not visible at
                           // Self level, can't be directly invoked from Self.
                           // Example: SendMessage_stub.
                           // All other primTypes are visible.
  ExternalPrimitive,       // Prim. represented by function that is called, not
                           // inlined. NOT the opposite of InternalPrimitive.
  RestartPrimitive,        // The _Restart prim.
  UnwindProtectPrimitive,  // The _OnNonLocalReturn: prim.
  ClonePrimitive,          // The _Clone prim.
  CloneVectorPrimitive,    // Either cloning obj. vector or byte vector.
  IntComparisonPrimitive,  // Integer comparison prim.
  IntArithmeticPrimitive,  // Integer arithmetic.
  FloatComparisonPrimitive,// FP comparison prim.
  FloatArithmeticPrimitive,// FP arithmetic.
  EQPrimitive,             // The _Eq: prim.
  AtPrimitive,             // The _At: prim.
  AtPutPrimitive,          // The _At:Put: prim.
  SizePrimitive,           // The _Size prim.
  ByteAtPrimitive,         // The _ByteAt: prim.
  ByteAtPutPrimitive,      // The _ByteAt:Put: prim.
  ByteSizePrimitive,       // The _ByteSize prim.
  NotReallyAPrimitive      // Eliminated by the compiler; just here for documentation
  };


// Classify primitives according to the values they return.
// In addition to the return type specified below, all primitives may return
// a failure indicator, e.g. as constructued using ErrorCodes::vmString_prim_error().
enum primExprType {
  UnknownPrimType,         // Nothing assumed about return value. Can return
                           // anything. Always valid classification. 
  NoReturnPrimType,        // Does not return (e.g., aborts)
  ReceiverPrimType,        // Returns the receiver.
  ReceiverMapPrimType,     // Returns object of same type (map) as receiver
  IntegerPrimType,         // Returns integer.
  FloatPrimType,           // Returns float.
  StringPrimType,          // Returns string.
  ObjVectorPrimType,       // Returns object vector.
  ByteVectorPrimType,      // Returns byte vector.
  BooleanPrimType          // Returns trueObj or falseObj.
  };

class PrimDesc {
 public:
  const char* _name;        // Name of primitive, does not include initial
                            // "_".
  fntype _fn;               // Pointer to function implementing primitive.
  primType _type;           // Specifies optimizations that can be applied
                            // (see also def. of primType).
  primExprType _etype;      // Return type of prim. (see def. of primExprType).
  bool _canFail;            // Set true if the prim. may fail, e.g. if it can
                            // return a value constructed by ErrorCodes::vmString_prim_error().
  bool _canScavenge;        // Set true if a scavenge can occur while executing
                            // prim (either explicit call to scavenge or e.g. 
                            // doing eval). See also canWalkStack and 
                            // canAbortProcess.
                            // Note: really means that must be able to find all oops in stack
                            // during this primitive. (e.g. need a reg mask) -- dmu 5/99
                            // (motivation: need to save regs in a known place)
  bool _canBeConstantFolded;// If true implies prim. can be constant folded.
  bool _cantBeMovedOrCut;   // If true implies prim can't be eliminated/moved.
  bool _canWalkStack;       // Set true if prim. might do a stack dump or 
                            // otherwise access stack.
                            // If true, then canScavenge must also be true!
  bool _canAbortProcess;    // Set true if prim. may cause a process abort.
                            // If true, then canScavenge must also be true!
  const char* _docString;    // documentation string
// public:
  const char*   name() { return _name; }
  primType      type() { return _type; }
  fntype        fn() { return _fn; }
  primExprType  etype()                 { return _etype; }
  bool          canFail()               { return _canFail; }
  bool          canScavenge()           { return _canScavenge; }
  bool          canBeConstantFolded()   { return _canBeConstantFolded; }
  bool          cantBeMovedOrCut()      { return _cantBeMovedOrCut; }
  bool          canWalkStack()          { return _canWalkStack; }
  bool          canAbortProcess()       { return _canAbortProcess; }
  bool          needsNLRCode()          { return _canAbortProcess; }
  const char*   docString()             { return _docString; }
  
  fint          arg_count();  // excludes receiver
  inline void   verify();
};

PrimDesc* getPrimDescOfSelector(stringOop selector, bool internal = false);

PrimDesc* getPrimDescOfBytes(const char* selector, fint len, bool internal = false);

inline PrimDesc* getPrimDescOfString(const char* selector, bool internal = false) {
  return getPrimDescOfBytes(selector, strlen(selector), internal); }

PrimDesc* getPrimDescOfFunction(fntype fn, bool internal = false);

PrimDesc* getPrimDescOfFirstInstruction(char* fn_start, bool internal = false);

const char* getPrimName(char* fn_start);

fint getPrimCallEndOffset(char* fn_start);

PrimDesc** primDescTable();

