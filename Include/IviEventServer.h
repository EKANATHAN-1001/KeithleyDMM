

/* this ALWAYS GENERATED file contains the definitions for the interfaces */


 /* File created by MIDL compiler version 6.00.0366 */
/* at Tue Sep 30 20:43:55 2008
 */
/* Compiler settings for .\IviEventServer.idl:
    Oicf, W1, Zp8, env=Win32 (32b run)
    protocol : dce , ms_ext, c_ext
    error checks: allocation ref bounds_check enum stub_data 
    VC __declspec() decoration level: 
         __declspec(uuid()), __declspec(selectany), __declspec(novtable)
         DECLSPEC_UUID(), MIDL_INTERFACE()
*/
//@@MIDL_FILE_HEADING(  )

#pragma warning( disable: 4049 )  /* more than 64k source lines */


/* verify that the <rpcndr.h> version is high enough to compile this file*/
#ifndef __REQUIRED_RPCNDR_H_VERSION__
#define __REQUIRED_RPCNDR_H_VERSION__ 440
#endif

#include "rpc.h"
#include "rpcndr.h"

#ifndef __RPCNDR_H_VERSION__
#error this stub requires an updated version of <rpcndr.h>
#endif // __RPCNDR_H_VERSION__

#ifndef COM_NO_WINDOWS_H
#include "windows.h"
#include "ole2.h"
#endif /*COM_NO_WINDOWS_H*/

#ifndef __IviEventServer_h__
#define __IviEventServer_h__

#if defined(_MSC_VER) && (_MSC_VER >= 1020)
#pragma once
#endif

/* Forward Declarations */ 

#ifndef __IIviEventServerEx_FWD_DEFINED__
#define __IIviEventServerEx_FWD_DEFINED__
typedef interface IIviEventServerEx IIviEventServerEx;
#endif 	/* __IIviEventServerEx_FWD_DEFINED__ */


#ifndef __IviEventServer_FWD_DEFINED__
#define __IviEventServer_FWD_DEFINED__

#ifdef __cplusplus
typedef class IviEventServer IviEventServer;
#else
typedef struct IviEventServer IviEventServer;
#endif /* __cplusplus */

#endif 	/* __IviEventServer_FWD_DEFINED__ */


/* header files for imported files */
#include "oaidl.h"
#include "ocidl.h"
#include "IviEventServerDLL.h"

#ifdef __cplusplus
extern "C"{
#endif 

void * __RPC_USER MIDL_user_allocate(size_t);
void __RPC_USER MIDL_user_free( void * ); 

/* interface __MIDL_itf_IviEventServer_0000 */
/* [local] */ 

typedef /* [public] */ struct __MIDL___MIDL_itf_IviEventServer_0000_0001
    {
    long ECselect;
    HRESULT ECcode;
    } 	EventCode;

typedef /* [public] */ struct __MIDL___MIDL_itf_IviEventServer_0000_0002
    {
    BSTR hostName;
    int processId;
    BSTR subSystemName;
    BSTR roleName;
    BSTR viewName;
    } 	Location;

typedef /* [public] */ struct __MIDL___MIDL_itf_IviEventServer_0000_0003
    {
    IviEventServerLatencyEnum lat;
    BOOL bOrdered;
    BOOL bLogged;
    } 	EventSpec;



extern RPC_IF_HANDLE __MIDL_itf_IviEventServer_0000_v0_0_c_ifspec;
extern RPC_IF_HANDLE __MIDL_itf_IviEventServer_0000_v0_0_s_ifspec;

#ifndef __IIviEventServerEx_INTERFACE_DEFINED__
#define __IIviEventServerEx_INTERFACE_DEFINED__

/* interface IIviEventServerEx */
/* [unique][helpstring][uuid][object] */ 


EXTERN_C const IID IID_IIviEventServerEx;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("11498C64-C769-48d4-8D5D-69AA57154C8D")
    IIviEventServerEx : public IUnknown
    {
    public:
        virtual /* [helpstring] */ HRESULT STDMETHODCALLTYPE SendEventExWithTime( 
            long selectCode,
            HRESULT eventCode,
            BSTR bstrEvent,
            /* [unique][in] */ SAFEARRAY * *infos,
            DATE date,
            long nanoseconds,
            long sourceCookie) = 0;
        
    };
    
#else 	/* C style interface */

    typedef struct IIviEventServerExVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            IIviEventServerEx * This,
            /* [in] */ REFIID riid,
            /* [iid_is][out] */ void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            IIviEventServerEx * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            IIviEventServerEx * This);
        
        /* [helpstring] */ HRESULT ( STDMETHODCALLTYPE *SendEventExWithTime )( 
            IIviEventServerEx * This,
            long selectCode,
            HRESULT eventCode,
            BSTR bstrEvent,
            /* [unique][in] */ SAFEARRAY * *infos,
            DATE date,
            long nanoseconds,
            long sourceCookie);
        
        END_INTERFACE
    } IIviEventServerExVtbl;

    interface IIviEventServerEx
    {
        CONST_VTBL struct IIviEventServerExVtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define IIviEventServerEx_QueryInterface(This,riid,ppvObject)	\
    (This)->lpVtbl -> QueryInterface(This,riid,ppvObject)

#define IIviEventServerEx_AddRef(This)	\
    (This)->lpVtbl -> AddRef(This)

#define IIviEventServerEx_Release(This)	\
    (This)->lpVtbl -> Release(This)


#define IIviEventServerEx_SendEventExWithTime(This,selectCode,eventCode,bstrEvent,infos,date,nanoseconds,sourceCookie)	\
    (This)->lpVtbl -> SendEventExWithTime(This,selectCode,eventCode,bstrEvent,infos,date,nanoseconds,sourceCookie)

#endif /* COBJMACROS */


#endif 	/* C style interface */



/* [helpstring] */ HRESULT STDMETHODCALLTYPE IIviEventServerEx_SendEventExWithTime_Proxy( 
    IIviEventServerEx * This,
    long selectCode,
    HRESULT eventCode,
    BSTR bstrEvent,
    /* [unique][in] */ SAFEARRAY * *infos,
    DATE date,
    long nanoseconds,
    long sourceCookie);


void __RPC_STUB IIviEventServerEx_SendEventExWithTime_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);



#endif 	/* __IIviEventServerEx_INTERFACE_DEFINED__ */



#ifndef __IVIEVENTSERVERLib_LIBRARY_DEFINED__
#define __IVIEVENTSERVERLib_LIBRARY_DEFINED__

/* library IVIEVENTSERVERLib */
/* [helpstring][version][uuid] */ 


EXTERN_C const IID LIBID_IVIEVENTSERVERLib;

EXTERN_C const CLSID CLSID_IviEventServer;

#ifdef __cplusplus

class DECLSPEC_UUID("D56DD39F-BFFE-48c3-8764-8D52EEFE2042")
IviEventServer;
#endif
#endif /* __IVIEVENTSERVERLib_LIBRARY_DEFINED__ */

/* Additional Prototypes for ALL interfaces */

unsigned long             __RPC_USER  BSTR_UserSize(     unsigned long *, unsigned long            , BSTR * ); 
unsigned char * __RPC_USER  BSTR_UserMarshal(  unsigned long *, unsigned char *, BSTR * ); 
unsigned char * __RPC_USER  BSTR_UserUnmarshal(unsigned long *, unsigned char *, BSTR * ); 
void                      __RPC_USER  BSTR_UserFree(     unsigned long *, BSTR * ); 

unsigned long             __RPC_USER  LPSAFEARRAY_UserSize(     unsigned long *, unsigned long            , LPSAFEARRAY * ); 
unsigned char * __RPC_USER  LPSAFEARRAY_UserMarshal(  unsigned long *, unsigned char *, LPSAFEARRAY * ); 
unsigned char * __RPC_USER  LPSAFEARRAY_UserUnmarshal(unsigned long *, unsigned char *, LPSAFEARRAY * ); 
void                      __RPC_USER  LPSAFEARRAY_UserFree(     unsigned long *, LPSAFEARRAY * ); 

/* end of Additional Prototypes */

#ifdef __cplusplus
}
#endif

#endif


