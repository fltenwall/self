 'No revision; generated file'
 '
Copyright 1992-2012 AUTHORS.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'Category: generated by primitiveMaker\x7fModuleInfo: Module: unixPrims_wrappers InitialContents: FollowSlot\x7fVisibility: public'
        
         unixPrims_wrappers = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'unixPrims_wrappers' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'unixPrims_wrappers' -> () From: ( |
             {} = 'Comment: This information was generated by the primitive maker (primitiveMaker.self).
Please do not change it manually. -- dmu 12/91 \x7fModuleInfo: Creator: globals modules unixPrims_wrappers.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'unixPrims_wrappers' -> () From: ( | {
         'Category: generated by primitiveMaker\x7fModuleInfo: Module: unixPrims_wrappers InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'glue'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'unixPrims_wrappers' -> () From: ( | {
         'Category: generated by primitiveMaker\x7fModuleInfo: Module: unixPrims_wrappers InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'unixPrims_wrappers' -> () From: ( | {
         'ModuleInfo: Module: unixPrims_wrappers InitialContents: FollowSlot'
        
         myComment <- 'This information was generated by the primitive maker (primitiveMaker.self).
Please do not change it manually. -- dmu 12/91 .'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'unixPrims_wrappers' -> () From: ( | {
         'Category: generated by primitiveMaker\x7fModuleInfo: Module: unixPrims_wrappers InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- 'No revision; generated file'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'unixPrims_wrappers' -> () From: ( | {
         'Category: generated by primitiveMaker\x7fModuleInfo: Module: unixPrims_wrappers InitialContents: FollowSlot\x7fVisibility: public'
        
         subpartNames <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'unixGlobals' -> 'os' -> () From: ( | {
         'Category: generated by primitiveMaker\x7fModuleInfo: Module: unixPrims_wrappers InitialContents: FollowSlot\x7fVisibility: private'
        
         basicAcceptSocket: t0 Info: t1 = ( |
            | 

            basicAcceptSocket: t0 Info: t1 IfFail: 
             [|:e| ^error: 'basicAcceptSocket:Info: failed: ', e]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'unixGlobals' -> 'os' -> () From: ( | {
         'Category: generated by primitiveMaker\x7fModuleInfo: Module: unixPrims_wrappers InitialContents: FollowSlot\x7fVisibility: private'
        
         basicAcceptSocket: t0 Info: t1 IfFail: fb = ( |
            | 

            t0 _accept_wrapbasicAcceptSocketInfo: t1 ResultProxy: 
              os_file deadCopy IfFail: 

            [|:e| ('badTypeError'   isPrefixOf: e)
              ||  ['deadProxyError' isPrefixOf: e]
                 ifFalse: [^fb value: e] 
                    True: [
                        (t0 reviveIfFail: [|:e| ^ fb value: e]) _accept_wrapbasicAcceptSocketInfo: t1 ResultProxy: 
                          os_file deadCopy IfFail: fb 
                 ]]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'unixGlobals' -> 'os' -> () From: ( | {
         'Category: generated by primitiveMaker\x7fModuleInfo: Module: unixPrims_wrappers InitialContents: FollowSlot\x7fVisibility: private'
        
         basicBindSocket: t0 Family: t1 Port: t2 Address: t3 = ( |
            | 

            basicBindSocket: t0 Family: t1 Port: t2 Address: t3 IfFail: 
             [|:e| ^error: 'basicBindSocket:Family:Port:Address: failed: ', e]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'unixGlobals' -> 'os' -> () From: ( | {
         'Category: generated by primitiveMaker\x7fModuleInfo: Module: unixPrims_wrappers InitialContents: FollowSlot\x7fVisibility: private'
        
         basicBindSocket: t0 Family: t1 Port: t2 Address: t3 IfFail: fb = ( |
            | 

            t0 _bind_wrapbasicBindSocketFamily: t1 Port: t2 Address: t3 
              IfFail: 

            [|:e| ('badTypeError'   isPrefixOf: e)
              ||  ['deadProxyError' isPrefixOf: e]
                 ifFalse: [^fb value: e] 
                    True: [
                        (t0 reviveIfFail: [|:e| ^ fb value: e]) _bind_wrapbasicBindSocketFamily: t1 asSmallInteger Port: 
                          t2 asSmallInteger Address: 
                          t3 asVMByteVector IfFail: fb 
                 ]]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'unixGlobals' -> 'os' -> () From: ( | {
         'Category: generated by primitiveMaker\x7fModuleInfo: Module: unixPrims_wrappers InitialContents: FollowSlot\x7fVisibility: private'
        
         basicCloseFile: t0 = ( |
            | 

            basicCloseFile: t0 IfFail: 
             [|:e| ^error: 'basicCloseFile: failed: ', e]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'unixGlobals' -> 'os' -> () From: ( | {
         'Category: generated by primitiveMaker\x7fModuleInfo: Module: unixPrims_wrappers InitialContents: FollowSlot\x7fVisibility: private'
        
         basicCloseFile: t0 IfFail: fb = ( |
            | 

            t0 _close_wrapbasicCloseFileIfFail: 

            [|:e| ('badTypeError'   isPrefixOf: e)
              ||  ['deadProxyError' isPrefixOf: e]
                 ifFalse: [^fb value: e] 
                    True: [
                        (t0 reviveIfFail: [|:e| ^ fb value: e]) _close_wrapbasicCloseFileIfFail: fb 
                 ]]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'unixGlobals' -> 'os' -> () From: ( | {
         'Category: generated by primitiveMaker\x7fModuleInfo: Module: unixPrims_wrappers InitialContents: FollowSlot\x7fVisibility: private'
        
         basicConnectSocket: t0 Family: t1 Port: t2 Address: t3 = ( |
            | 

            basicConnectSocket: t0 Family: t1 Port: t2 Address: t3 
             IfFail: 
             [|:e| ^error: 'basicConnectSocket:Family:Port:Address: failed: ', e]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'unixGlobals' -> 'os' -> () From: ( | {
         'Category: generated by primitiveMaker\x7fModuleInfo: Module: unixPrims_wrappers InitialContents: FollowSlot\x7fVisibility: private'
        
         basicConnectSocket: t0 Family: t1 Port: t2 Address: t3 IfFail: fb = ( |
            | 

            t0 _connect_wrapbasicConnectSocketFamily: t1 Port: t2 Address: 
              t3 IfFail: 

            [|:e| ('badTypeError'   isPrefixOf: e)
              ||  ['deadProxyError' isPrefixOf: e]
                 ifFalse: [^fb value: e] 
                    True: [
                        (t0 reviveIfFail: [|:e| ^ fb value: e]) _connect_wrapbasicConnectSocketFamily: t1 asSmallInteger 
                          Port: t2 asSmallInteger Address: 
                          t3 asVMByteVector IfFail: fb 
                 ]]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'unixGlobals' -> 'os' -> () From: ( | {
         'Category: generated by primitiveMaker\x7fModuleInfo: Module: unixPrims_wrappers InitialContents: FollowSlot\x7fVisibility: private'
        
         basicFcntlFile: t0 Request: t1 Arg: t2 = ( |
            | 

            basicFcntlFile: t0 Request: t1 Arg: t2 IfFail: 
             [|:e| ^error: 'basicFcntlFile:Request:Arg: failed: ', e]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'unixGlobals' -> 'os' -> () From: ( | {
         'Category: generated by primitiveMaker\x7fModuleInfo: Module: unixPrims_wrappers InitialContents: FollowSlot\x7fVisibility: private'
        
         basicFcntlFile: t0 Request: t1 Arg: t2 IfFail: fb = ( |
            | 

            t0 _fcntlbasicFcntlFileRequest: t1 Arg: t2 IfFail: 

            [|:e| ('badTypeError'   isPrefixOf: e)
              ||  ['deadProxyError' isPrefixOf: e]
                 ifFalse: [^fb value: e] 
                    True: [
                        (t0 reviveIfFail: [|:e| ^ fb value: e]) _fcntlbasicFcntlFileRequest: t1 asSmallInteger Arg: 
                          t2 asSmallInteger IfFail: fb 
                 ]]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'unixGlobals' -> 'os' -> () From: ( | {
         'Category: generated by primitiveMaker\x7fModuleInfo: Module: unixPrims_wrappers InitialContents: FollowSlot\x7fVisibility: private'
        
         basicGetHostByAddr: t0 Type: t1 = ( |
            | 

            basicGetHostByAddr: t0 Type: t1 IfFail: 
             [|:e| ^error: 'basicGetHostByAddr:Type: failed: ', e]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'unixGlobals' -> 'os' -> () From: ( | {
         'Category: generated by primitiveMaker\x7fModuleInfo: Module: unixPrims_wrappers InitialContents: FollowSlot\x7fVisibility: private'
        
         basicGetHostByAddr: t0 Type: t1 IfFail: fb = ( |
            | 

            t0 _gethostbyaddr_wrapbasicGetHostByAddrType: t1 IfFail: 

            [|:e| ('badTypeError'   isPrefixOf: e)
              ||  ['deadProxyError' isPrefixOf: e]
                 ifFalse: [^fb value: e] 
                    True: [
                        t0 asVMByteVector _gethostbyaddr_wrapbasicGetHostByAddrType: 
                          t1 asSmallInteger IfFail: fb 
                 ]]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'unixGlobals' -> 'os' -> () From: ( | {
         'Category: generated by primitiveMaker\x7fModuleInfo: Module: unixPrims_wrappers InitialContents: FollowSlot\x7fVisibility: private'
        
         basicGetHostByName: t0 = ( |
            | 

            basicGetHostByName: t0 IfFail: 
             [|:e| ^error: 'basicGetHostByName: failed: ', e]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'unixGlobals' -> 'os' -> () From: ( | {
         'Category: generated by primitiveMaker\x7fModuleInfo: Module: unixPrims_wrappers InitialContents: FollowSlot\x7fVisibility: private'
        
         basicGetHostByName: t0 IfFail: fb = ( |
            | 

            t0 _gethostbyname_wrapbasicGetHostByNameIfFail: 

            [|:e| ('badTypeError'   isPrefixOf: e)
              ||  ['deadProxyError' isPrefixOf: e]
                 ifFalse: [^fb value: e] 
                    True: [
                        t0 asVMByteVector _gethostbyname_wrapbasicGetHostByNameIfFail: fb 
                 ]]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'unixGlobals' -> 'os' -> () From: ( | {
         'Category: generated by primitiveMaker\x7fModuleInfo: Module: unixPrims_wrappers InitialContents: FollowSlot\x7fVisibility: private'
        
         basicListenSocket: t0 Backlog: t1 = ( |
            | 

            basicListenSocket: t0 Backlog: t1 IfFail: 
             [|:e| ^error: 'basicListenSocket:Backlog: failed: ', e]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'unixGlobals' -> 'os' -> () From: ( | {
         'Category: generated by primitiveMaker\x7fModuleInfo: Module: unixPrims_wrappers InitialContents: FollowSlot\x7fVisibility: private'
        
         basicListenSocket: t0 Backlog: t1 IfFail: fb = ( |
            | 

            t0 _listenbasicListenSocketBacklog: t1 IfFail: 

            [|:e| ('badTypeError'   isPrefixOf: e)
              ||  ['deadProxyError' isPrefixOf: e]
                 ifFalse: [^fb value: e] 
                    True: [
                        (t0 reviveIfFail: [|:e| ^ fb value: e]) _listenbasicListenSocketBacklog: t1 asSmallInteger IfFail: 
                          fb 
                 ]]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'unixGlobals' -> 'os' -> () From: ( | {
         'Category: generated by primitiveMaker\x7fModuleInfo: Module: unixPrims_wrappers InitialContents: FollowSlot\x7fVisibility: private'
        
         basicLseekFile: t0 Offset: t1 Whence: t2 = ( |
            | 

            basicLseekFile: t0 Offset: t1 Whence: t2 IfFail: 
             [|:e| ^error: 'basicLseekFile:Offset:Whence: failed: ', e]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'unixGlobals' -> 'os' -> () From: ( | {
         'Category: generated by primitiveMaker\x7fModuleInfo: Module: unixPrims_wrappers InitialContents: FollowSlot\x7fVisibility: private'
        
         basicLseekFile: t0 Offset: t1 Whence: t2 IfFail: fb = ( |
            | 

            t0 _lseekbasicLseekFileOffset: t1 Whence: t2 IfFail: 

            [|:e| ('badTypeError'   isPrefixOf: e)
              ||  ['deadProxyError' isPrefixOf: e]
                 ifFalse: [^fb value: e] 
                    True: [
                        (t0 reviveIfFail: [|:e| ^ fb value: e]) _lseekbasicLseekFileOffset: t1 asSmallInteger Whence: 
                          t2 asSmallInteger IfFail: fb 
                 ]]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'unixGlobals' -> 'os' -> () From: ( | {
         'Category: generated by primitiveMaker\x7fModuleInfo: Module: unixPrims_wrappers InitialContents: FollowSlot\x7fVisibility: private'
        
         basicOpenFileName: t0 Flags: t1 Mode: t2 = ( |
            | 

            basicOpenFileName: t0 Flags: t1 Mode: t2 IfFail: 
             [|:e| ^error: 'basicOpenFileName:Flags:Mode: failed: ', e]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'unixGlobals' -> 'os' -> () From: ( | {
         'Category: generated by primitiveMaker\x7fModuleInfo: Module: unixPrims_wrappers InitialContents: FollowSlot\x7fVisibility: private'
        
         basicOpenFileName: t0 Flags: t1 Mode: t2 IfFail: fb = ( |
            | 

            t0 _open_wrapbasicOpenFileNameFlags: t1 Mode: t2 ResultProxy: 
              os_file deadCopy IfFail: 

            [|:e| ('badTypeError'   isPrefixOf: e)
              ||  ['deadProxyError' isPrefixOf: e]
                 ifFalse: [^fb value: e] 
                    True: [
                        t0 asVMByteVector _open_wrapbasicOpenFileNameFlags: t1 asSmallInteger Mode: 
                          t2 asSmallInteger ResultProxy: 
                          os_file deadCopy IfFail: fb 
                 ]]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'unixGlobals' -> 'os' -> () From: ( | {
         'Category: generated by primitiveMaker\x7fModuleInfo: Module: unixPrims_wrappers InitialContents: FollowSlot\x7fVisibility: private'
        
         basicReadFile: t0 Into: t1 Offset: t2 Count: t3 = ( |
            | 

            basicReadFile: t0 Into: t1 Offset: t2 Count: t3 IfFail: 
             [|:e| ^error: 'basicReadFile:Into:Offset:Count: failed: ', e]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'unixGlobals' -> 'os' -> () From: ( | {
         'Category: generated by primitiveMaker\x7fModuleInfo: Module: unixPrims_wrappers InitialContents: FollowSlot\x7fVisibility: private'
        
         basicReadFile: t0 Into: t1 Offset: t2 Count: t3 IfFail: fb = ( |
            | 

            t0 _read_wrapbasicReadFileInto: t1 Offset: t2 Count: t3 
              IfFail: 

            [|:e| ('badTypeError'   isPrefixOf: e)
              ||  ['deadProxyError' isPrefixOf: e]
                 ifFalse: [^fb value: e] 
                    True: [
                        (t0 reviveIfFail: [|:e| ^ fb value: e]) _read_wrapbasicReadFileInto: t1 asVMByteVector Offset: 
                          t2 asSmallInteger Count: 
                          t3 asSmallInteger IfFail: fb 
                 ]]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'unixGlobals' -> 'os' -> () From: ( | {
         'Category: generated by primitiveMaker\x7fModuleInfo: Module: unixPrims_wrappers InitialContents: FollowSlot\x7fVisibility: private'
        
         basicSelectInto: t0 Size: t1 = ( |
            | 

            basicSelectInto: t0 Size: t1 IfFail: 
             [|:e| ^error: 'basicSelectInto:Size: failed: ', e]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'unixGlobals' -> 'os' -> () From: ( | {
         'Category: generated by primitiveMaker\x7fModuleInfo: Module: unixPrims_wrappers InitialContents: FollowSlot\x7fVisibility: private'
        
         basicSelectInto: t0 Size: t1 IfFail: fb = ( |
            | 

            t0 _select_wrapbasicSelectIntoSize: t1 IfFail: 

            [|:e| ('badTypeError'   isPrefixOf: e)
              ||  ['deadProxyError' isPrefixOf: e]
                 ifFalse: [^fb value: e] 
                    True: [
                        t0 _select_wrapbasicSelectIntoSize: t1 asSmallInteger IfFail: 
                          fb 
                 ]]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'unixGlobals' -> 'os' -> () From: ( | {
         'Category: generated by primitiveMaker\x7fModuleInfo: Module: unixPrims_wrappers InitialContents: FollowSlot\x7fVisibility: private'
        
         basicSelectReadInto: t0 Size: t1 = ( |
            | 

            basicSelectReadInto: t0 Size: t1 IfFail: 
             [|:e| ^error: 'basicSelectReadInto:Size: failed: ', e]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'unixGlobals' -> 'os' -> () From: ( | {
         'Category: generated by primitiveMaker\x7fModuleInfo: Module: unixPrims_wrappers InitialContents: FollowSlot\x7fVisibility: private'
        
         basicSelectReadInto: t0 Size: t1 IfFail: fb = ( |
            | 

            t0 _select_read_wrapbasicSelectReadIntoSize: t1 IfFail: 

            [|:e| ('badTypeError'   isPrefixOf: e)
              ||  ['deadProxyError' isPrefixOf: e]
                 ifFalse: [^fb value: e] 
                    True: [
                        t0 _select_read_wrapbasicSelectReadIntoSize: t1 asSmallInteger 
                          IfFail: fb 
                 ]]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'unixGlobals' -> 'os' -> () From: ( | {
         'Category: generated by primitiveMaker\x7fModuleInfo: Module: unixPrims_wrappers InitialContents: FollowSlot\x7fVisibility: private'
        
         basicSocketDomain: t0 Type: t1 Protocol: t2 = ( |
            | 

            basicSocketDomain: t0 Type: t1 Protocol: t2 IfFail: 
             [|:e| ^error: 'basicSocketDomain:Type:Protocol: failed: ', e]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'unixGlobals' -> 'os' -> () From: ( | {
         'Category: generated by primitiveMaker\x7fModuleInfo: Module: unixPrims_wrappers InitialContents: FollowSlot\x7fVisibility: private'
        
         basicSocketDomain: t0 Type: t1 Protocol: t2 IfFail: fb = ( |
            | 

            t0 _socket_wrapbasicSocketDomainType: t1 Protocol: t2 
              ResultProxy: os_file deadCopy IfFail: 

            [|:e| ('badTypeError'   isPrefixOf: e)
              ||  ['deadProxyError' isPrefixOf: e]
                 ifFalse: [^fb value: e] 
                    True: [
                        t0 asSmallInteger _socket_wrapbasicSocketDomainType: t1 asSmallInteger 
                          Protocol: t2 asSmallInteger 
                          ResultProxy: os_file deadCopy IfFail: 
                          fb 
                 ]]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'unixGlobals' -> 'os' -> () From: ( | {
         'Category: generated by primitiveMaker\x7fModuleInfo: Module: unixPrims_wrappers InitialContents: FollowSlot\x7fVisibility: private'
        
         basicUnlink: t0 = ( |
            | 

            basicUnlink: t0 IfFail: 
             [|:e| ^error: 'basicUnlink: failed: ', e]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'unixGlobals' -> 'os' -> () From: ( | {
         'Category: generated by primitiveMaker\x7fModuleInfo: Module: unixPrims_wrappers InitialContents: FollowSlot\x7fVisibility: private'
        
         basicUnlink: t0 IfFail: fb = ( |
            | 

            t0 _unlinkbasicUnlinkIfFail: 

            [|:e| ('badTypeError'   isPrefixOf: e)
              ||  ['deadProxyError' isPrefixOf: e]
                 ifFalse: [^fb value: e] 
                    True: [
                        t0 asVMByteVector _unlinkbasicUnlinkIfFail: fb 
                 ]]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'unixGlobals' -> 'os' -> () From: ( | {
         'Category: generated by primitiveMaker\x7fModuleInfo: Module: unixPrims_wrappers InitialContents: FollowSlot\x7fVisibility: private'
        
         basicWriteFile: t0 Into: t1 Offset: t2 Count: t3 = ( |
            | 

            basicWriteFile: t0 Into: t1 Offset: t2 Count: t3 IfFail: 
             [|:e| ^error: 'basicWriteFile:Into:Offset:Count: failed: ', e]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'unixGlobals' -> 'os' -> () From: ( | {
         'Category: generated by primitiveMaker\x7fModuleInfo: Module: unixPrims_wrappers InitialContents: FollowSlot\x7fVisibility: private'
        
         basicWriteFile: t0 Into: t1 Offset: t2 Count: t3 IfFail: fb = ( |
            | 

            t0 _write_wrapbasicWriteFileInto: t1 Offset: t2 Count: t3 
              IfFail: 

            [|:e| ('badTypeError'   isPrefixOf: e)
              ||  ['deadProxyError' isPrefixOf: e]
                 ifFalse: [^fb value: e] 
                    True: [
                        (t0 reviveIfFail: [|:e| ^ fb value: e]) _write_wrapbasicWriteFileInto: t1 asVMByteVector Offset: 
                          t2 asSmallInteger Count: 
                          t3 asSmallInteger IfFail: fb 
                 ]]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'unixGlobals' -> 'os' -> () From: ( | {
         'Category: generated by primitiveMaker\x7fModuleInfo: Module: unixPrims_wrappers InitialContents: FollowSlot\x7fVisibility: public'
        
         command: t0 = ( |
            | 

            command: t0 IfFail: [|:e| ^error: 'command: failed: ', e]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'unixGlobals' -> 'os' -> () From: ( | {
         'Category: generated by primitiveMaker\x7fModuleInfo: Module: unixPrims_wrappers InitialContents: FollowSlot\x7fVisibility: public'
        
         command: t0 IfFail: fb = ( |
            | 

            t0 _system_wrapcommandIfFail: 

            [|:e| ('badTypeError'   isPrefixOf: e)
              ||  ['deadProxyError' isPrefixOf: e]
                 ifFalse: [^fb value: e] 
                    True: [
                        t0 asVMByteVector _system_wrapcommandIfFail: fb 
                 ]]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'unixGlobals' -> 'os' -> () From: ( | {
         'Category: generated by primitiveMaker\x7fModuleInfo: Module: unixPrims_wrappers InitialContents: FollowSlot\x7fVisibility: public'
        
         environmentAt: t0 = ( |
            | 

            environmentAt: t0 IfFail: 
             [|:e| ^error: 'environmentAt: failed: ', e]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'unixGlobals' -> 'os' -> () From: ( | {
         'Category: generated by primitiveMaker\x7fModuleInfo: Module: unixPrims_wrappers InitialContents: FollowSlot\x7fVisibility: public'
        
         environmentAt: t0 IfFail: fb = ( |
            | 

            t0 _getenvenvironmentAtIfFail: 

            [|:e| ('badTypeError'   isPrefixOf: e)
              ||  ['deadProxyError' isPrefixOf: e]
                 ifFalse: [^fb value: e] 
                    True: [
                        t0 asVMByteVector _getenvenvironmentAtIfFail: fb 
                 ]]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'unixGlobals' -> 'os' -> () From: ( | {
         'Category: generated by primitiveMaker\x7fModuleInfo: Module: unixPrims_wrappers InitialContents: FollowSlot\x7fVisibility: public'
        
         environmentAt: t0 Put: t1 = ( |
            | 

            environmentAt: t0 Put: t1 IfFail: 
             [|:e| ^error: 'environmentAt:Put: failed: ', e]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'unixGlobals' -> 'os' -> () From: ( | {
         'Category: generated by primitiveMaker\x7fModuleInfo: Module: unixPrims_wrappers InitialContents: FollowSlot\x7fVisibility: public'
        
         environmentAt: t0 Put: t1 IfFail: fb = ( |
            | 

            t0 _putenv_wrapenvironmentAtPut: t1 IfFail: 

            [|:e| ('badTypeError'   isPrefixOf: e)
              ||  ['deadProxyError' isPrefixOf: e]
                 ifFalse: [^fb value: e] 
                    True: [
                        t0 asVMByteVector _putenv_wrapenvironmentAtPut: t1 asVMByteVector IfFail: fb 
                 ]]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'unixGlobals' -> 'os' -> () From: ( | {
         'Category: generated by primitiveMaker\x7fModuleInfo: Module: unixPrims_wrappers InitialContents: FollowSlot\x7fVisibility: public'
        
         getcwd = ( |
            | 

            getcwdIfFail: [|:e| ^error: 'getcwd failed: ', e]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'unixGlobals' -> 'os' -> () From: ( | {
         'Category: generated by primitiveMaker\x7fModuleInfo: Module: unixPrims_wrappers InitialContents: FollowSlot\x7fVisibility: public'
        
         getcwdIfFail: fb = ( |
            | 

            "ignored" _getcwd_wrapgetcwdIfFail: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'unixGlobals' -> 'os' -> () From: ( | {
         'Category: generated by primitiveMaker\x7fModuleInfo: Module: unixPrims_wrappers InitialContents: FollowSlot\x7fVisibility: public'
        
         getpid = ( |
            | 

            getpidIfFail: [|:e| ^error: 'getpid failed: ', e]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'unixGlobals' -> 'os' -> () From: ( | {
         'Category: generated by primitiveMaker\x7fModuleInfo: Module: unixPrims_wrappers InitialContents: FollowSlot\x7fVisibility: public'
        
         getpidIfFail: fb = ( |
            | 

            "ignored" _getpidIfFail: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'unixFile' -> () From: ( | {
         'Category: generated by primitiveMaker\x7fModuleInfo: Module: unixPrims_wrappers InitialContents: FollowSlot\x7fVisibility: public'
        
         expand: t0 = ( |
            | 

            expand: t0 IfFail: [|:e| ^error: 'expand: failed: ', e]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'unixFile' -> () From: ( | {
         'Category: generated by primitiveMaker\x7fModuleInfo: Module: unixPrims_wrappers InitialContents: FollowSlot\x7fVisibility: public'
        
         expand: t0 IfFail: fb = ( |
            | 

            t0 _ExpandDir_primexpandIfFail: 

            [|:e| ('badTypeError'   isPrefixOf: e)
              ||  ['deadProxyError' isPrefixOf: e]
                 ifFalse: [^fb value: e] 
                    True: [
                        t0 asVMByteVector _ExpandDir_primexpandIfFail: fb 
                 ]]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'unixFile' -> () From: ( | {
         'Category: generated by primitiveMaker\x7fModuleInfo: Module: unixPrims_wrappers InitialContents: FollowSlot'
        
         fileDescriptor = ( |
            | 

            fileDescriptorIfFail: 
             [|:e| ^error: 'fileDescriptor failed: ', e]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'unixFile' -> () From: ( | {
         'Category: generated by primitiveMaker\x7fModuleInfo: Module: unixPrims_wrappers InitialContents: FollowSlot'
        
         fileDescriptorIfFail: fb = ( |
            | 

             _MYSELFfileDescriptorIfFail: 

            [|:e| ('badTypeError'   isPrefixOf: e)
              ||  ['deadProxyError' isPrefixOf: e]
                 ifFalse: [^fb value: e] 
                    True: [
                        ( reviveIfFail: [|:e| ^ fb value: e]) _MYSELFfileDescriptorIfFail: fb 
                 ]]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'unixFile' -> () From: ( | {
         'Category: generated by primitiveMaker\x7fModuleInfo: Module: unixPrims_wrappers InitialContents: FollowSlot\x7fVisibility: private'
        
         setFd: t0 = ( |
            | 

            setFd: t0 IfFail: [|:e| ^error: 'setFd: failed: ', e]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'unixFile' -> () From: ( | {
         'Category: generated by primitiveMaker\x7fModuleInfo: Module: unixPrims_wrappers InitialContents: FollowSlot\x7fVisibility: private'
        
         setFd: t0 IfFail: fb = ( |
            | 

            t0 _MYSELFsetFdResultProxy: self IfFail: 

            [|:e| ('badTypeError'   isPrefixOf: e)
              ||  ['deadProxyError' isPrefixOf: e]
                 ifFalse: [^fb value: e] 
                    True: [
                        t0 asSmallInteger _MYSELFsetFdResultProxy: self IfFail: fb 
                 ]]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'unixFile' -> () From: ( | {
         'Category: generated by primitiveMaker\x7fModuleInfo: Module: unixPrims_wrappers InitialContents: FollowSlot\x7fVisibility: public'
        
         setsockoptLevel: t0 OptName: t1 OptVal: t2 = ( |
            | 

            setsockoptLevel: t0 OptName: t1 OptVal: t2 IfFail: 
             [|:e| ^error: 'setsockoptLevel:OptName:OptVal: failed: ', e]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'unixFile' -> () From: ( | {
         'Category: generated by primitiveMaker\x7fModuleInfo: Module: unixPrims_wrappers InitialContents: FollowSlot\x7fVisibility: public'
        
         setsockoptLevel: t0 OptName: t1 OptVal: t2 IfFail: fb = ( |
            | 

             _setsockoptLevel: t0 OptName: t1 OptVal: t2 IfFail: 

            [|:e| ('badTypeError'   isPrefixOf: e)
              ||  ['deadProxyError' isPrefixOf: e]
                 ifFalse: [^fb value: e] 
                    True: [
                        ( reviveIfFail: [|:e| ^ fb value: e]) _setsockoptLevel: t0 asSmallInteger OptName: 
                          t1 asSmallInteger OptVal: 
                          t2 asVMByteVector IfFail: fb 
                 ]]).
        } | ) 



 '-- Side effects'

 globals modules unixPrims_wrappers postFileIn
