

/* this ALWAYS GENERATED file contains the definitions for the interfaces */


 /* File created by MIDL compiler version 6.00.0366 */
/* at Tue Sep 30 20:43:44 2008
 */
/* Compiler settings for .\IviEventServerDLL.idl:
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

#ifndef __IviEventServerDLL_h__
#define __IviEventServerDLL_h__

#if defined(_MSC_VER) && (_MSC_VER >= 1020)
#pragma once
#endif

/* Forward Declarations */ 

#ifndef __IIviEventEntry_FWD_DEFINED__
#define __IIviEventEntry_FWD_DEFINED__
typedef interface IIviEventEntry IIviEventEntry;
#endif 	/* __IIviEventEntry_FWD_DEFINED__ */


#ifndef __IIviEventCallback_FWD_DEFINED__
#define __IIviEventCallback_FWD_DEFINED__
typedef interface IIviEventCallback IIviEventCallback;
#endif 	/* __IIviEventCallback_FWD_DEFINED__ */


#ifndef __IIviEventCallbackFast_FWD_DEFINED__
#define __IIviEventCallbackFast_FWD_DEFINED__
typedef interface IIviEventCallbackFast IIviEventCallbackFast;
#endif 	/* __IIviEventCallbackFast_FWD_DEFINED__ */


#ifndef __IIviEventSource_FWD_DEFINED__
#define __IIviEventSource_FWD_DEFINED__
typedef interface IIviEventSource IIviEventSource;
#endif 	/* __IIviEventSource_FWD_DEFINED__ */


#ifndef __IIviEventServer_FWD_DEFINED__
#define __IIviEventServer_FWD_DEFINED__
typedef interface IIviEventServer IIviEventServer;
#endif 	/* __IIviEventServer_FWD_DEFINED__ */


#ifndef __IIviEventManager_FWD_DEFINED__
#define __IIviEventManager_FWD_DEFINED__
typedef interface IIviEventManager IIviEventManager;
#endif 	/* __IIviEventManager_FWD_DEFINED__ */


#ifndef __IIviEventCallback_FWD_DEFINED__
#define __IIviEventCallback_FWD_DEFINED__
typedef interface IIviEventCallback IIviEventCallback;
#endif 	/* __IIviEventCallback_FWD_DEFINED__ */


#ifndef __IIviEventCallbackFast_FWD_DEFINED__
#define __IIviEventCallbackFast_FWD_DEFINED__
typedef interface IIviEventCallbackFast IIviEventCallbackFast;
#endif 	/* __IIviEventCallbackFast_FWD_DEFINED__ */


#ifndef __IIviEventSource_FWD_DEFINED__
#define __IIviEventSource_FWD_DEFINED__
typedef interface IIviEventSource IIviEventSource;
#endif 	/* __IIviEventSource_FWD_DEFINED__ */


#ifndef __IviEventServerDLL_FWD_DEFINED__
#define __IviEventServerDLL_FWD_DEFINED__

#ifdef __cplusplus
typedef class IviEventServerDLL IviEventServerDLL;
#else
typedef struct IviEventServerDLL IviEventServerDLL;
#endif /* __cplusplus */

#endif 	/* __IviEventServerDLL_FWD_DEFINED__ */


#ifndef __IviEventEntry_FWD_DEFINED__
#define __IviEventEntry_FWD_DEFINED__

#ifdef __cplusplus
typedef class IviEventEntry IviEventEntry;
#else
typedef struct IviEventEntry IviEventEntry;
#endif /* __cplusplus */

#endif 	/* __IviEventEntry_FWD_DEFINED__ */


/* header files for imported files */
#include "oaidl.h"
#include "ocidl.h"

#ifdef __cplusplus
extern "C"{
#endif 

void * __RPC_USER MIDL_user_allocate(size_t);
void __RPC_USER MIDL_user_free( void * ); 

/* interface __MIDL_itf_IviEventServerDLL_0000 */
/* [local] */ 

typedef /* [helpstring][v1_enum][public] */ 
enum IviEventServerLatencyEnum
    {	IviEventServerLatencyLow	= 1,
	IviEventServerLatencyMedium	= 2,
	IviEventServerLatencyHigh	= 3
    } 	IviEventServerLatencyEnum;

typedef /* [helpstring][v1_enum][public] */ 
enum IviEventServerLevelVectorEnum
    {	IviEventServerLevelVectorStatus	= 0x1,
	IviEventServerLevelVectorEvent	= 0x2,
	IviEventServerLevelVectorWarning	= 0x4,
	IviEventServerLevelVectorError	= 0x8,
	IviEventServerLevelVectorDebug	= 0x10
    } 	IviEventServerLevelVectorEnum;

typedef /* [helpstring][v1_enum][public] */ 
enum IviEventServerEventTypeEnum
    {	IviEventServerEventTypeStatus	= 0x10000000,
	IviEventServerEventTypeEvent	= 0x20000000,
	IviEventServerEventTypeWarning	= 0x40000000,
	IviEventServerEventTypeError	= 0x80000000,
	IviEventServerEventTypeDebug	= 0x8000000
    } 	IviEventServerEventTypeEnum;



extern RPC_IF_HANDLE __MIDL_itf_IviEventServerDLL_0000_v0_0_c_ifspec;
extern RPC_IF_HANDLE __MIDL_itf_IviEventServerDLL_0000_v0_0_s_ifspec;

#ifndef __IIviEventEntry_INTERFACE_DEFINED__
#define __IIviEventEntry_INTERFACE_DEFINED__

/* interface IIviEventEntry */
/* [unique][helpstring][uuid][object] */ 


EXTERN_C const IID IID_IIviEventEntry;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("BDFFA6BB-5C1D-473d-BC93-9F0D4BEBA0D0")
    IIviEventEntry : public IUnknown
    {
    public:
        virtual /* [helpstring][propput] */ HRESULT STDMETHODCALLTYPE put_TimeStamp( 
            DATE timestamp) = 0;
        
        virtual /* [helpstring][propget] */ HRESULT STDMETHODCALLTYPE get_TimeStamp( 
            /* [retval][out] */ DATE *timestamp) = 0;
        
        virtual /* [helpstring][propput] */ HRESULT STDMETHODCALLTYPE put_Nanoseconds( 
            long nanoseconds) = 0;
        
        virtual /* [helpstring][propget] */ HRESULT STDMETHODCALLTYPE get_Nanoseconds( 
            /* [retval][out] */ long *nanoseconds) = 0;
        
        virtual /* [helpstring][propput] */ HRESULT STDMETHODCALLTYPE put_Description( 
            BSTR description) = 0;
        
        virtual /* [helpstring][propget] */ HRESULT STDMETHODCALLTYPE get_Description( 
            /* [retval][out] */ BSTR *description) = 0;
        
        virtual /* [helpstring][propput] */ HRESULT STDMETHODCALLTYPE put_SelectCode( 
            long SelectCode) = 0;
        
        virtual /* [helpstring][propget] */ HRESULT STDMETHODCALLTYPE get_SelectCode( 
            /* [retval][out] */ long *SelectCode) = 0;
        
        virtual /* [helpstring][propput] */ HRESULT STDMETHODCALLTYPE put_EventCode( 
            long EventCode) = 0;
        
        virtual /* [helpstring][propget] */ HRESULT STDMETHODCALLTYPE get_EventCode( 
            /* [retval][out] */ long *EventCode) = 0;
        
        virtual /* [helpstring][propput] */ HRESULT STDMETHODCALLTYPE put_EventType( 
            IviEventServerEventTypeEnum eventType) = 0;
        
        virtual /* [helpstring][propget] */ HRESULT STDMETHODCALLTYPE get_EventType( 
            /* [retval][out] */ IviEventServerEventTypeEnum *eventType) = 0;
        
        virtual /* [helpstring][propput] */ HRESULT STDMETHODCALLTYPE put_HostName( 
            BSTR HostName) = 0;
        
        virtual /* [helpstring][propget] */ HRESULT STDMETHODCALLTYPE get_HostName( 
            /* [retval][out] */ BSTR *HostName) = 0;
        
        virtual /* [helpstring][propput] */ HRESULT STDMETHODCALLTYPE put_ProcessId( 
            long ProcessId) = 0;
        
        virtual /* [helpstring][propget] */ HRESULT STDMETHODCALLTYPE get_ProcessId( 
            /* [retval][out] */ long *ProcessId) = 0;
        
        virtual /* [helpstring][propput] */ HRESULT STDMETHODCALLTYPE put_SubsystemName( 
            BSTR SubsystemName) = 0;
        
        virtual /* [helpstring][propget] */ HRESULT STDMETHODCALLTYPE get_SubsystemName( 
            /* [retval][out] */ BSTR *SubsystemName) = 0;
        
        virtual /* [helpstring][propput] */ HRESULT STDMETHODCALLTYPE put_RoleName( 
            BSTR RoleName) = 0;
        
        virtual /* [helpstring][propget] */ HRESULT STDMETHODCALLTYPE get_RoleName( 
            /* [retval][out] */ BSTR *RoleName) = 0;
        
        virtual /* [helpstring][propput] */ HRESULT STDMETHODCALLTYPE put_ViewName( 
            BSTR ViewName) = 0;
        
        virtual /* [helpstring][propget] */ HRESULT STDMETHODCALLTYPE get_ViewName( 
            /* [retval][out] */ BSTR *ViewName) = 0;
        
        virtual /* [helpstring] */ HRESULT STDMETHODCALLTYPE ConfigureLocation( 
            BSTR hostName,
            long processId,
            BSTR subSystemName,
            BSTR roleName,
            BSTR viewName) = 0;
        
        virtual /* [helpstring] */ HRESULT STDMETHODCALLTYPE SetInfo( 
            /* [unique][in] */ SAFEARRAY * *infos) = 0;
        
        virtual /* [helpstring] */ HRESULT STDMETHODCALLTYPE GetInfo( 
            /* [retval][out] */ SAFEARRAY * *infos) = 0;
        
        virtual /* [helpstring] */ HRESULT STDMETHODCALLTYPE FormatEventEntry( 
            /* [retval][out] */ BSTR *formatted) = 0;
        
    };
    
#else 	/* C style interface */

    typedef struct IIviEventEntryVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            IIviEventEntry * This,
            /* [in] */ REFIID riid,
            /* [iid_is][out] */ void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            IIviEventEntry * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            IIviEventEntry * This);
        
        /* [helpstring][propput] */ HRESULT ( STDMETHODCALLTYPE *put_TimeStamp )( 
            IIviEventEntry * This,
            DATE timestamp);
        
        /* [helpstring][propget] */ HRESULT ( STDMETHODCALLTYPE *get_TimeStamp )( 
            IIviEventEntry * This,
            /* [retval][out] */ DATE *timestamp);
        
        /* [helpstring][propput] */ HRESULT ( STDMETHODCALLTYPE *put_Nanoseconds )( 
            IIviEventEntry * This,
            long nanoseconds);
        
        /* [helpstring][propget] */ HRESULT ( STDMETHODCALLTYPE *get_Nanoseconds )( 
            IIviEventEntry * This,
            /* [retval][out] */ long *nanoseconds);
        
        /* [helpstring][propput] */ HRESULT ( STDMETHODCALLTYPE *put_Description )( 
            IIviEventEntry * This,
            BSTR description);
        
        /* [helpstring][propget] */ HRESULT ( STDMETHODCALLTYPE *get_Description )( 
            IIviEventEntry * This,
            /* [retval][out] */ BSTR *description);
        
        /* [helpstring][propput] */ HRESULT ( STDMETHODCALLTYPE *put_SelectCode )( 
            IIviEventEntry * This,
            long SelectCode);
        
        /* [helpstring][propget] */ HRESULT ( STDMETHODCALLTYPE *get_SelectCode )( 
            IIviEventEntry * This,
            /* [retval][out] */ long *SelectCode);
        
        /* [helpstring][propput] */ HRESULT ( STDMETHODCALLTYPE *put_EventCode )( 
            IIviEventEntry * This,
            long EventCode);
        
        /* [helpstring][propget] */ HRESULT ( STDMETHODCALLTYPE *get_EventCode )( 
            IIviEventEntry * This,
            /* [retval][out] */ long *EventCode);
        
        /* [helpstring][propput] */ HRESULT ( STDMETHODCALLTYPE *put_EventType )( 
            IIviEventEntry * This,
            IviEventServerEventTypeEnum eventType);
        
        /* [helpstring][propget] */ HRESULT ( STDMETHODCALLTYPE *get_EventType )( 
            IIviEventEntry * This,
            /* [retval][out] */ IviEventServerEventTypeEnum *eventType);
        
        /* [helpstring][propput] */ HRESULT ( STDMETHODCALLTYPE *put_HostName )( 
            IIviEventEntry * This,
            BSTR HostName);
        
        /* [helpstring][propget] */ HRESULT ( STDMETHODCALLTYPE *get_HostName )( 
            IIviEventEntry * This,
            /* [retval][out] */ BSTR *HostName);
        
        /* [helpstring][propput] */ HRESULT ( STDMETHODCALLTYPE *put_ProcessId )( 
            IIviEventEntry * This,
            long ProcessId);
        
        /* [helpstring][propget] */ HRESULT ( STDMETHODCALLTYPE *get_ProcessId )( 
            IIviEventEntry * This,
            /* [retval][out] */ long *ProcessId);
        
        /* [helpstring][propput] */ HRESULT ( STDMETHODCALLTYPE *put_SubsystemName )( 
            IIviEventEntry * This,
            BSTR SubsystemName);
        
        /* [helpstring][propget] */ HRESULT ( STDMETHODCALLTYPE *get_SubsystemName )( 
            IIviEventEntry * This,
            /* [retval][out] */ BSTR *SubsystemName);
        
        /* [helpstring][propput] */ HRESULT ( STDMETHODCALLTYPE *put_RoleName )( 
            IIviEventEntry * This,
            BSTR RoleName);
        
        /* [helpstring][propget] */ HRESULT ( STDMETHODCALLTYPE *get_RoleName )( 
            IIviEventEntry * This,
            /* [retval][out] */ BSTR *RoleName);
        
        /* [helpstring][propput] */ HRESULT ( STDMETHODCALLTYPE *put_ViewName )( 
            IIviEventEntry * This,
            BSTR ViewName);
        
        /* [helpstring][propget] */ HRESULT ( STDMETHODCALLTYPE *get_ViewName )( 
            IIviEventEntry * This,
            /* [retval][out] */ BSTR *ViewName);
        
        /* [helpstring] */ HRESULT ( STDMETHODCALLTYPE *ConfigureLocation )( 
            IIviEventEntry * This,
            BSTR hostName,
            long processId,
            BSTR subSystemName,
            BSTR roleName,
            BSTR viewName);
        
        /* [helpstring] */ HRESULT ( STDMETHODCALLTYPE *SetInfo )( 
            IIviEventEntry * This,
            /* [unique][in] */ SAFEARRAY * *infos);
        
        /* [helpstring] */ HRESULT ( STDMETHODCALLTYPE *GetInfo )( 
            IIviEventEntry * This,
            /* [retval][out] */ SAFEARRAY * *infos);
        
        /* [helpstring] */ HRESULT ( STDMETHODCALLTYPE *FormatEventEntry )( 
            IIviEventEntry * This,
            /* [retval][out] */ BSTR *formatted);
        
        END_INTERFACE
    } IIviEventEntryVtbl;

    interface IIviEventEntry
    {
        CONST_VTBL struct IIviEventEntryVtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define IIviEventEntry_QueryInterface(This,riid,ppvObject)	\
    (This)->lpVtbl -> QueryInterface(This,riid,ppvObject)

#define IIviEventEntry_AddRef(This)	\
    (This)->lpVtbl -> AddRef(This)

#define IIviEventEntry_Release(This)	\
    (This)->lpVtbl -> Release(This)


#define IIviEventEntry_put_TimeStamp(This,timestamp)	\
    (This)->lpVtbl -> put_TimeStamp(This,timestamp)

#define IIviEventEntry_get_TimeStamp(This,timestamp)	\
    (This)->lpVtbl -> get_TimeStamp(This,timestamp)

#define IIviEventEntry_put_Nanoseconds(This,nanoseconds)	\
    (This)->lpVtbl -> put_Nanoseconds(This,nanoseconds)

#define IIviEventEntry_get_Nanoseconds(This,nanoseconds)	\
    (This)->lpVtbl -> get_Nanoseconds(This,nanoseconds)

#define IIviEventEntry_put_Description(This,description)	\
    (This)->lpVtbl -> put_Description(This,description)

#define IIviEventEntry_get_Description(This,description)	\
    (This)->lpVtbl -> get_Description(This,description)

#define IIviEventEntry_put_SelectCode(This,SelectCode)	\
    (This)->lpVtbl -> put_SelectCode(This,SelectCode)

#define IIviEventEntry_get_SelectCode(This,SelectCode)	\
    (This)->lpVtbl -> get_SelectCode(This,SelectCode)

#define IIviEventEntry_put_EventCode(This,EventCode)	\
    (This)->lpVtbl -> put_EventCode(This,EventCode)

#define IIviEventEntry_get_EventCode(This,EventCode)	\
    (This)->lpVtbl -> get_EventCode(This,EventCode)

#define IIviEventEntry_put_EventType(This,eventType)	\
    (This)->lpVtbl -> put_EventType(This,eventType)

#define IIviEventEntry_get_EventType(This,eventType)	\
    (This)->lpVtbl -> get_EventType(This,eventType)

#define IIviEventEntry_put_HostName(This,HostName)	\
    (This)->lpVtbl -> put_HostName(This,HostName)

#define IIviEventEntry_get_HostName(This,HostName)	\
    (This)->lpVtbl -> get_HostName(This,HostName)

#define IIviEventEntry_put_ProcessId(This,ProcessId)	\
    (This)->lpVtbl -> put_ProcessId(This,ProcessId)

#define IIviEventEntry_get_ProcessId(This,ProcessId)	\
    (This)->lpVtbl -> get_ProcessId(This,ProcessId)

#define IIviEventEntry_put_SubsystemName(This,SubsystemName)	\
    (This)->lpVtbl -> put_SubsystemName(This,SubsystemName)

#define IIviEventEntry_get_SubsystemName(This,SubsystemName)	\
    (This)->lpVtbl -> get_SubsystemName(This,SubsystemName)

#define IIviEventEntry_put_RoleName(This,RoleName)	\
    (This)->lpVtbl -> put_RoleName(This,RoleName)

#define IIviEventEntry_get_RoleName(This,RoleName)	\
    (This)->lpVtbl -> get_RoleName(This,RoleName)

#define IIviEventEntry_put_ViewName(This,ViewName)	\
    (This)->lpVtbl -> put_ViewName(This,ViewName)

#define IIviEventEntry_get_ViewName(This,ViewName)	\
    (This)->lpVtbl -> get_ViewName(This,ViewName)

#define IIviEventEntry_ConfigureLocation(This,hostName,processId,subSystemName,roleName,viewName)	\
    (This)->lpVtbl -> ConfigureLocation(This,hostName,processId,subSystemName,roleName,viewName)

#define IIviEventEntry_SetInfo(This,infos)	\
    (This)->lpVtbl -> SetInfo(This,infos)

#define IIviEventEntry_GetInfo(This,infos)	\
    (This)->lpVtbl -> GetInfo(This,infos)

#define IIviEventEntry_FormatEventEntry(This,formatted)	\
    (This)->lpVtbl -> FormatEventEntry(This,formatted)

#endif /* COBJMACROS */


#endif 	/* C style interface */



/* [helpstring][propput] */ HRESULT STDMETHODCALLTYPE IIviEventEntry_put_TimeStamp_Proxy( 
    IIviEventEntry * This,
    DATE timestamp);


void __RPC_STUB IIviEventEntry_put_TimeStamp_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [helpstring][propget] */ HRESULT STDMETHODCALLTYPE IIviEventEntry_get_TimeStamp_Proxy( 
    IIviEventEntry * This,
    /* [retval][out] */ DATE *timestamp);


void __RPC_STUB IIviEventEntry_get_TimeStamp_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [helpstring][propput] */ HRESULT STDMETHODCALLTYPE IIviEventEntry_put_Nanoseconds_Proxy( 
    IIviEventEntry * This,
    long nanoseconds);


void __RPC_STUB IIviEventEntry_put_Nanoseconds_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [helpstring][propget] */ HRESULT STDMETHODCALLTYPE IIviEventEntry_get_Nanoseconds_Proxy( 
    IIviEventEntry * This,
    /* [retval][out] */ long *nanoseconds);


void __RPC_STUB IIviEventEntry_get_Nanoseconds_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [helpstring][propput] */ HRESULT STDMETHODCALLTYPE IIviEventEntry_put_Description_Proxy( 
    IIviEventEntry * This,
    BSTR description);


void __RPC_STUB IIviEventEntry_put_Description_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [helpstring][propget] */ HRESULT STDMETHODCALLTYPE IIviEventEntry_get_Description_Proxy( 
    IIviEventEntry * This,
    /* [retval][out] */ BSTR *description);


void __RPC_STUB IIviEventEntry_get_Description_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [helpstring][propput] */ HRESULT STDMETHODCALLTYPE IIviEventEntry_put_SelectCode_Proxy( 
    IIviEventEntry * This,
    long SelectCode);


void __RPC_STUB IIviEventEntry_put_SelectCode_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [helpstring][propget] */ HRESULT STDMETHODCALLTYPE IIviEventEntry_get_SelectCode_Proxy( 
    IIviEventEntry * This,
    /* [retval][out] */ long *SelectCode);


void __RPC_STUB IIviEventEntry_get_SelectCode_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [helpstring][propput] */ HRESULT STDMETHODCALLTYPE IIviEventEntry_put_EventCode_Proxy( 
    IIviEventEntry * This,
    long EventCode);


void __RPC_STUB IIviEventEntry_put_EventCode_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [helpstring][propget] */ HRESULT STDMETHODCALLTYPE IIviEventEntry_get_EventCode_Proxy( 
    IIviEventEntry * This,
    /* [retval][out] */ long *EventCode);


void __RPC_STUB IIviEventEntry_get_EventCode_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [helpstring][propput] */ HRESULT STDMETHODCALLTYPE IIviEventEntry_put_EventType_Proxy( 
    IIviEventEntry * This,
    IviEventServerEventTypeEnum eventType);


void __RPC_STUB IIviEventEntry_put_EventType_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [helpstring][propget] */ HRESULT STDMETHODCALLTYPE IIviEventEntry_get_EventType_Proxy( 
    IIviEventEntry * This,
    /* [retval][out] */ IviEventServerEventTypeEnum *eventType);


void __RPC_STUB IIviEventEntry_get_EventType_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [helpstring][propput] */ HRESULT STDMETHODCALLTYPE IIviEventEntry_put_HostName_Proxy( 
    IIviEventEntry * This,
    BSTR HostName);


void __RPC_STUB IIviEventEntry_put_HostName_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [helpstring][propget] */ HRESULT STDMETHODCALLTYPE IIviEventEntry_get_HostName_Proxy( 
    IIviEventEntry * This,
    /* [retval][out] */ BSTR *HostName);


void __RPC_STUB IIviEventEntry_get_HostName_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [helpstring][propput] */ HRESULT STDMETHODCALLTYPE IIviEventEntry_put_ProcessId_Proxy( 
    IIviEventEntry * This,
    long ProcessId);


void __RPC_STUB IIviEventEntry_put_ProcessId_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [helpstring][propget] */ HRESULT STDMETHODCALLTYPE IIviEventEntry_get_ProcessId_Proxy( 
    IIviEventEntry * This,
    /* [retval][out] */ long *ProcessId);


void __RPC_STUB IIviEventEntry_get_ProcessId_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [helpstring][propput] */ HRESULT STDMETHODCALLTYPE IIviEventEntry_put_SubsystemName_Proxy( 
    IIviEventEntry * This,
    BSTR SubsystemName);


void __RPC_STUB IIviEventEntry_put_SubsystemName_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [helpstring][propget] */ HRESULT STDMETHODCALLTYPE IIviEventEntry_get_SubsystemName_Proxy( 
    IIviEventEntry * This,
    /* [retval][out] */ BSTR *SubsystemName);


void __RPC_STUB IIviEventEntry_get_SubsystemName_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [helpstring][propput] */ HRESULT STDMETHODCALLTYPE IIviEventEntry_put_RoleName_Proxy( 
    IIviEventEntry * This,
    BSTR RoleName);


void __RPC_STUB IIviEventEntry_put_RoleName_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [helpstring][propget] */ HRESULT STDMETHODCALLTYPE IIviEventEntry_get_RoleName_Proxy( 
    IIviEventEntry * This,
    /* [retval][out] */ BSTR *RoleName);


void __RPC_STUB IIviEventEntry_get_RoleName_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [helpstring][propput] */ HRESULT STDMETHODCALLTYPE IIviEventEntry_put_ViewName_Proxy( 
    IIviEventEntry * This,
    BSTR ViewName);


void __RPC_STUB IIviEventEntry_put_ViewName_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [helpstring][propget] */ HRESULT STDMETHODCALLTYPE IIviEventEntry_get_ViewName_Proxy( 
    IIviEventEntry * This,
    /* [retval][out] */ BSTR *ViewName);


void __RPC_STUB IIviEventEntry_get_ViewName_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [helpstring] */ HRESULT STDMETHODCALLTYPE IIviEventEntry_ConfigureLocation_Proxy( 
    IIviEventEntry * This,
    BSTR hostName,
    long processId,
    BSTR subSystemName,
    BSTR roleName,
    BSTR viewName);


void __RPC_STUB IIviEventEntry_ConfigureLocation_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [helpstring] */ HRESULT STDMETHODCALLTYPE IIviEventEntry_SetInfo_Proxy( 
    IIviEventEntry * This,
    /* [unique][in] */ SAFEARRAY * *infos);


void __RPC_STUB IIviEventEntry_SetInfo_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [helpstring] */ HRESULT STDMETHODCALLTYPE IIviEventEntry_GetInfo_Proxy( 
    IIviEventEntry * This,
    /* [retval][out] */ SAFEARRAY * *infos);


void __RPC_STUB IIviEventEntry_GetInfo_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [helpstring] */ HRESULT STDMETHODCALLTYPE IIviEventEntry_FormatEventEntry_Proxy( 
    IIviEventEntry * This,
    /* [retval][out] */ BSTR *formatted);


void __RPC_STUB IIviEventEntry_FormatEventEntry_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);



#endif 	/* __IIviEventEntry_INTERFACE_DEFINED__ */


#ifndef __IIviEventCallback_INTERFACE_DEFINED__
#define __IIviEventCallback_INTERFACE_DEFINED__

/* interface IIviEventCallback */
/* [unique][helpstring][uuid][object] */ 


EXTERN_C const IID IID_IIviEventCallback;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("77C94050-F48A-4f3a-9A1B-84A1815CC7F3")
    IIviEventCallback : public IUnknown
    {
    public:
        virtual /* [helpstring] */ HRESULT STDMETHODCALLTYPE EventCallback( 
            /* [in] */ IIviEventEntry *EventEntry) = 0;
        
    };
    
#else 	/* C style interface */

    typedef struct IIviEventCallbackVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            IIviEventCallback * This,
            /* [in] */ REFIID riid,
            /* [iid_is][out] */ void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            IIviEventCallback * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            IIviEventCallback * This);
        
        /* [helpstring] */ HRESULT ( STDMETHODCALLTYPE *EventCallback )( 
            IIviEventCallback * This,
            /* [in] */ IIviEventEntry *EventEntry);
        
        END_INTERFACE
    } IIviEventCallbackVtbl;

    interface IIviEventCallback
    {
        CONST_VTBL struct IIviEventCallbackVtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define IIviEventCallback_QueryInterface(This,riid,ppvObject)	\
    (This)->lpVtbl -> QueryInterface(This,riid,ppvObject)

#define IIviEventCallback_AddRef(This)	\
    (This)->lpVtbl -> AddRef(This)

#define IIviEventCallback_Release(This)	\
    (This)->lpVtbl -> Release(This)


#define IIviEventCallback_EventCallback(This,EventEntry)	\
    (This)->lpVtbl -> EventCallback(This,EventEntry)

#endif /* COBJMACROS */


#endif 	/* C style interface */



/* [helpstring] */ HRESULT STDMETHODCALLTYPE IIviEventCallback_EventCallback_Proxy( 
    IIviEventCallback * This,
    /* [in] */ IIviEventEntry *EventEntry);


void __RPC_STUB IIviEventCallback_EventCallback_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);



#endif 	/* __IIviEventCallback_INTERFACE_DEFINED__ */


#ifndef __IIviEventCallbackFast_INTERFACE_DEFINED__
#define __IIviEventCallbackFast_INTERFACE_DEFINED__

/* interface IIviEventCallbackFast */
/* [unique][helpstring][uuid][object] */ 


EXTERN_C const IID IID_IIviEventCallbackFast;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("B54AFD7C-EC18-4c9d-A5A0-B64B0FAA3239")
    IIviEventCallbackFast : public IUnknown
    {
    public:
        virtual /* [helpstring] */ HRESULT STDMETHODCALLTYPE EventCallbackFast( 
            long SelectCode,
            long EventCode,
            BSTR description) = 0;
        
    };
    
#else 	/* C style interface */

    typedef struct IIviEventCallbackFastVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            IIviEventCallbackFast * This,
            /* [in] */ REFIID riid,
            /* [iid_is][out] */ void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            IIviEventCallbackFast * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            IIviEventCallbackFast * This);
        
        /* [helpstring] */ HRESULT ( STDMETHODCALLTYPE *EventCallbackFast )( 
            IIviEventCallbackFast * This,
            long SelectCode,
            long EventCode,
            BSTR description);
        
        END_INTERFACE
    } IIviEventCallbackFastVtbl;

    interface IIviEventCallbackFast
    {
        CONST_VTBL struct IIviEventCallbackFastVtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define IIviEventCallbackFast_QueryInterface(This,riid,ppvObject)	\
    (This)->lpVtbl -> QueryInterface(This,riid,ppvObject)

#define IIviEventCallbackFast_AddRef(This)	\
    (This)->lpVtbl -> AddRef(This)

#define IIviEventCallbackFast_Release(This)	\
    (This)->lpVtbl -> Release(This)


#define IIviEventCallbackFast_EventCallbackFast(This,SelectCode,EventCode,description)	\
    (This)->lpVtbl -> EventCallbackFast(This,SelectCode,EventCode,description)

#endif /* COBJMACROS */


#endif 	/* C style interface */



/* [helpstring] */ HRESULT STDMETHODCALLTYPE IIviEventCallbackFast_EventCallbackFast_Proxy( 
    IIviEventCallbackFast * This,
    long SelectCode,
    long EventCode,
    BSTR description);


void __RPC_STUB IIviEventCallbackFast_EventCallbackFast_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);



#endif 	/* __IIviEventCallbackFast_INTERFACE_DEFINED__ */


#ifndef __IIviEventSource_INTERFACE_DEFINED__
#define __IIviEventSource_INTERFACE_DEFINED__

/* interface IIviEventSource */
/* [unique][helpstring][uuid][object] */ 


EXTERN_C const IID IID_IIviEventSource;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("93C815C7-917D-44ad-A701-14BB37D0ACD7")
    IIviEventSource : public IUnknown
    {
    public:
        virtual /* [helpstring] */ HRESULT STDMETHODCALLTYPE EventLevelChanged( 
            BSTR sinkHostName,
            long sinkProcessId,
            BSTR sinkSubSystemName,
            BSTR sinkRoleName,
            BSTR sinkViewName,
            long levelVector) = 0;
        
    };
    
#else 	/* C style interface */

    typedef struct IIviEventSourceVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            IIviEventSource * This,
            /* [in] */ REFIID riid,
            /* [iid_is][out] */ void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            IIviEventSource * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            IIviEventSource * This);
        
        /* [helpstring] */ HRESULT ( STDMETHODCALLTYPE *EventLevelChanged )( 
            IIviEventSource * This,
            BSTR sinkHostName,
            long sinkProcessId,
            BSTR sinkSubSystemName,
            BSTR sinkRoleName,
            BSTR sinkViewName,
            long levelVector);
        
        END_INTERFACE
    } IIviEventSourceVtbl;

    interface IIviEventSource
    {
        CONST_VTBL struct IIviEventSourceVtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define IIviEventSource_QueryInterface(This,riid,ppvObject)	\
    (This)->lpVtbl -> QueryInterface(This,riid,ppvObject)

#define IIviEventSource_AddRef(This)	\
    (This)->lpVtbl -> AddRef(This)

#define IIviEventSource_Release(This)	\
    (This)->lpVtbl -> Release(This)


#define IIviEventSource_EventLevelChanged(This,sinkHostName,sinkProcessId,sinkSubSystemName,sinkRoleName,sinkViewName,levelVector)	\
    (This)->lpVtbl -> EventLevelChanged(This,sinkHostName,sinkProcessId,sinkSubSystemName,sinkRoleName,sinkViewName,levelVector)

#endif /* COBJMACROS */


#endif 	/* C style interface */



/* [helpstring] */ HRESULT STDMETHODCALLTYPE IIviEventSource_EventLevelChanged_Proxy( 
    IIviEventSource * This,
    BSTR sinkHostName,
    long sinkProcessId,
    BSTR sinkSubSystemName,
    BSTR sinkRoleName,
    BSTR sinkViewName,
    long levelVector);


void __RPC_STUB IIviEventSource_EventLevelChanged_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);



#endif 	/* __IIviEventSource_INTERFACE_DEFINED__ */


#ifndef __IIviEventServer_INTERFACE_DEFINED__
#define __IIviEventServer_INTERFACE_DEFINED__

/* interface IIviEventServer */
/* [unique][helpstring][uuid][object] */ 


EXTERN_C const IID IID_IIviEventServer;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("04B5064D-A473-4bb0-BFD2-10CAD97AFAF2")
    IIviEventServer : public IUnknown
    {
    public:
        virtual /* [helpstring] */ HRESULT STDMETHODCALLTYPE ConnectSource( 
            /* [unique][in] */ IIviEventSource *Source,
            BSTR HostName,
            long ProcessId,
            BSTR SubSystemName,
            BSTR RoleName,
            BSTR ViewName,
            /* [unique][in] */ SAFEARRAY * *Events,
            /* [unique][in] */ SAFEARRAY * *Latencies,
            /* [unique][in] */ SAFEARRAY * *Orders,
            /* [unique][in] */ SAFEARRAY * *Logs,
            /* [out][in] */ long *SourceCookie) = 0;
        
        virtual /* [helpstring] */ HRESULT STDMETHODCALLTYPE ConnectSink( 
            /* [unique][in] */ IUnknown *IUnkSink,
            BSTR HostName,
            long ProcessId,
            BSTR SubSystemName,
            BSTR RoleName,
            BSTR ViewName,
            /* [unique][in] */ SAFEARRAY * *InterestedEvents,
            /* [out][in] */ long *SinkCookie) = 0;
        
        virtual /* [helpstring] */ HRESULT STDMETHODCALLTYPE DisconnectSource( 
            long SourceCookie) = 0;
        
        virtual /* [helpstring] */ HRESULT STDMETHODCALLTYPE DisconnectSink( 
            long SinkCookie) = 0;
        
        virtual /* [helpstring] */ HRESULT STDMETHODCALLTYPE SendEvent( 
            long EventCode,
            BSTR Description,
            long SourceCookie) = 0;
        
        virtual /* [helpstring] */ HRESULT STDMETHODCALLTYPE SendEventEx( 
            long SelectCode,
            long EventCode,
            BSTR description,
            /* [unique][in] */ SAFEARRAY * *Infos,
            long SourceCookie) = 0;
        
        virtual /* [helpstring] */ HRESULT STDMETHODCALLTYPE GetNextEvent( 
            /* [out][in] */ long *EID,
            /* [retval][out] */ IIviEventEntry **EventEntry) = 0;
        
        virtual /* [helpstring] */ HRESULT STDMETHODCALLTYPE GetPreviousEvent( 
            /* [out][in] */ long *EID,
            /* [retval][out] */ IIviEventEntry **EventEntry) = 0;
        
        virtual /* [helpstring] */ HRESULT STDMETHODCALLTYPE ChangeMySourceEventLevel( 
            long Cookie,
            IviEventServerLevelVectorEnum LevelVector) = 0;
        
    };
    
#else 	/* C style interface */

    typedef struct IIviEventServerVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            IIviEventServer * This,
            /* [in] */ REFIID riid,
            /* [iid_is][out] */ void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            IIviEventServer * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            IIviEventServer * This);
        
        /* [helpstring] */ HRESULT ( STDMETHODCALLTYPE *ConnectSource )( 
            IIviEventServer * This,
            /* [unique][in] */ IIviEventSource *Source,
            BSTR HostName,
            long ProcessId,
            BSTR SubSystemName,
            BSTR RoleName,
            BSTR ViewName,
            /* [unique][in] */ SAFEARRAY * *Events,
            /* [unique][in] */ SAFEARRAY * *Latencies,
            /* [unique][in] */ SAFEARRAY * *Orders,
            /* [unique][in] */ SAFEARRAY * *Logs,
            /* [out][in] */ long *SourceCookie);
        
        /* [helpstring] */ HRESULT ( STDMETHODCALLTYPE *ConnectSink )( 
            IIviEventServer * This,
            /* [unique][in] */ IUnknown *IUnkSink,
            BSTR HostName,
            long ProcessId,
            BSTR SubSystemName,
            BSTR RoleName,
            BSTR ViewName,
            /* [unique][in] */ SAFEARRAY * *InterestedEvents,
            /* [out][in] */ long *SinkCookie);
        
        /* [helpstring] */ HRESULT ( STDMETHODCALLTYPE *DisconnectSource )( 
            IIviEventServer * This,
            long SourceCookie);
        
        /* [helpstring] */ HRESULT ( STDMETHODCALLTYPE *DisconnectSink )( 
            IIviEventServer * This,
            long SinkCookie);
        
        /* [helpstring] */ HRESULT ( STDMETHODCALLTYPE *SendEvent )( 
            IIviEventServer * This,
            long EventCode,
            BSTR Description,
            long SourceCookie);
        
        /* [helpstring] */ HRESULT ( STDMETHODCALLTYPE *SendEventEx )( 
            IIviEventServer * This,
            long SelectCode,
            long EventCode,
            BSTR description,
            /* [unique][in] */ SAFEARRAY * *Infos,
            long SourceCookie);
        
        /* [helpstring] */ HRESULT ( STDMETHODCALLTYPE *GetNextEvent )( 
            IIviEventServer * This,
            /* [out][in] */ long *EID,
            /* [retval][out] */ IIviEventEntry **EventEntry);
        
        /* [helpstring] */ HRESULT ( STDMETHODCALLTYPE *GetPreviousEvent )( 
            IIviEventServer * This,
            /* [out][in] */ long *EID,
            /* [retval][out] */ IIviEventEntry **EventEntry);
        
        /* [helpstring] */ HRESULT ( STDMETHODCALLTYPE *ChangeMySourceEventLevel )( 
            IIviEventServer * This,
            long Cookie,
            IviEventServerLevelVectorEnum LevelVector);
        
        END_INTERFACE
    } IIviEventServerVtbl;

    interface IIviEventServer
    {
        CONST_VTBL struct IIviEventServerVtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define IIviEventServer_QueryInterface(This,riid,ppvObject)	\
    (This)->lpVtbl -> QueryInterface(This,riid,ppvObject)

#define IIviEventServer_AddRef(This)	\
    (This)->lpVtbl -> AddRef(This)

#define IIviEventServer_Release(This)	\
    (This)->lpVtbl -> Release(This)


#define IIviEventServer_ConnectSource(This,Source,HostName,ProcessId,SubSystemName,RoleName,ViewName,Events,Latencies,Orders,Logs,SourceCookie)	\
    (This)->lpVtbl -> ConnectSource(This,Source,HostName,ProcessId,SubSystemName,RoleName,ViewName,Events,Latencies,Orders,Logs,SourceCookie)

#define IIviEventServer_ConnectSink(This,IUnkSink,HostName,ProcessId,SubSystemName,RoleName,ViewName,InterestedEvents,SinkCookie)	\
    (This)->lpVtbl -> ConnectSink(This,IUnkSink,HostName,ProcessId,SubSystemName,RoleName,ViewName,InterestedEvents,SinkCookie)

#define IIviEventServer_DisconnectSource(This,SourceCookie)	\
    (This)->lpVtbl -> DisconnectSource(This,SourceCookie)

#define IIviEventServer_DisconnectSink(This,SinkCookie)	\
    (This)->lpVtbl -> DisconnectSink(This,SinkCookie)

#define IIviEventServer_SendEvent(This,EventCode,Description,SourceCookie)	\
    (This)->lpVtbl -> SendEvent(This,EventCode,Description,SourceCookie)

#define IIviEventServer_SendEventEx(This,SelectCode,EventCode,description,Infos,SourceCookie)	\
    (This)->lpVtbl -> SendEventEx(This,SelectCode,EventCode,description,Infos,SourceCookie)

#define IIviEventServer_GetNextEvent(This,EID,EventEntry)	\
    (This)->lpVtbl -> GetNextEvent(This,EID,EventEntry)

#define IIviEventServer_GetPreviousEvent(This,EID,EventEntry)	\
    (This)->lpVtbl -> GetPreviousEvent(This,EID,EventEntry)

#define IIviEventServer_ChangeMySourceEventLevel(This,Cookie,LevelVector)	\
    (This)->lpVtbl -> ChangeMySourceEventLevel(This,Cookie,LevelVector)

#endif /* COBJMACROS */


#endif 	/* C style interface */



/* [helpstring] */ HRESULT STDMETHODCALLTYPE IIviEventServer_ConnectSource_Proxy( 
    IIviEventServer * This,
    /* [unique][in] */ IIviEventSource *Source,
    BSTR HostName,
    long ProcessId,
    BSTR SubSystemName,
    BSTR RoleName,
    BSTR ViewName,
    /* [unique][in] */ SAFEARRAY * *Events,
    /* [unique][in] */ SAFEARRAY * *Latencies,
    /* [unique][in] */ SAFEARRAY * *Orders,
    /* [unique][in] */ SAFEARRAY * *Logs,
    /* [out][in] */ long *SourceCookie);


void __RPC_STUB IIviEventServer_ConnectSource_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [helpstring] */ HRESULT STDMETHODCALLTYPE IIviEventServer_ConnectSink_Proxy( 
    IIviEventServer * This,
    /* [unique][in] */ IUnknown *IUnkSink,
    BSTR HostName,
    long ProcessId,
    BSTR SubSystemName,
    BSTR RoleName,
    BSTR ViewName,
    /* [unique][in] */ SAFEARRAY * *InterestedEvents,
    /* [out][in] */ long *SinkCookie);


void __RPC_STUB IIviEventServer_ConnectSink_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [helpstring] */ HRESULT STDMETHODCALLTYPE IIviEventServer_DisconnectSource_Proxy( 
    IIviEventServer * This,
    long SourceCookie);


void __RPC_STUB IIviEventServer_DisconnectSource_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [helpstring] */ HRESULT STDMETHODCALLTYPE IIviEventServer_DisconnectSink_Proxy( 
    IIviEventServer * This,
    long SinkCookie);


void __RPC_STUB IIviEventServer_DisconnectSink_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [helpstring] */ HRESULT STDMETHODCALLTYPE IIviEventServer_SendEvent_Proxy( 
    IIviEventServer * This,
    long EventCode,
    BSTR Description,
    long SourceCookie);


void __RPC_STUB IIviEventServer_SendEvent_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [helpstring] */ HRESULT STDMETHODCALLTYPE IIviEventServer_SendEventEx_Proxy( 
    IIviEventServer * This,
    long SelectCode,
    long EventCode,
    BSTR description,
    /* [unique][in] */ SAFEARRAY * *Infos,
    long SourceCookie);


void __RPC_STUB IIviEventServer_SendEventEx_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [helpstring] */ HRESULT STDMETHODCALLTYPE IIviEventServer_GetNextEvent_Proxy( 
    IIviEventServer * This,
    /* [out][in] */ long *EID,
    /* [retval][out] */ IIviEventEntry **EventEntry);


void __RPC_STUB IIviEventServer_GetNextEvent_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [helpstring] */ HRESULT STDMETHODCALLTYPE IIviEventServer_GetPreviousEvent_Proxy( 
    IIviEventServer * This,
    /* [out][in] */ long *EID,
    /* [retval][out] */ IIviEventEntry **EventEntry);


void __RPC_STUB IIviEventServer_GetPreviousEvent_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [helpstring] */ HRESULT STDMETHODCALLTYPE IIviEventServer_ChangeMySourceEventLevel_Proxy( 
    IIviEventServer * This,
    long Cookie,
    IviEventServerLevelVectorEnum LevelVector);


void __RPC_STUB IIviEventServer_ChangeMySourceEventLevel_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);



#endif 	/* __IIviEventServer_INTERFACE_DEFINED__ */


#ifndef __IIviEventManager_INTERFACE_DEFINED__
#define __IIviEventManager_INTERFACE_DEFINED__

/* interface IIviEventManager */
/* [unique][helpstring][uuid][object] */ 


EXTERN_C const IID IID_IIviEventManager;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("59FE2D65-65C3-4f92-9557-FC5F823DB510")
    IIviEventManager : public IUnknown
    {
    public:
        virtual /* [helpstring] */ HRESULT STDMETHODCALLTYPE GetEventSourceLocations( 
            /* [unique][out][in] */ SAFEARRAY * *HostNames,
            /* [unique][out][in] */ SAFEARRAY * *ProcessIds,
            /* [unique][out][in] */ SAFEARRAY * *SubSystemNames,
            /* [unique][out][in] */ SAFEARRAY * *RoleNames,
            /* [unique][out][in] */ SAFEARRAY * *ViewNames,
            /* [unique][out][in] */ SAFEARRAY * *SourceCookies) = 0;
        
        virtual /* [helpstring] */ HRESULT STDMETHODCALLTYPE GetEventSinkLocations( 
            /* [unique][out][in] */ SAFEARRAY * *HostNames,
            /* [unique][out][in] */ SAFEARRAY * *ProcessIds,
            /* [unique][out][in] */ SAFEARRAY * *SubSystemNames,
            /* [unique][out][in] */ SAFEARRAY * *RoleNames,
            /* [unique][out][in] */ SAFEARRAY * *ViewNames,
            /* [unique][out][in] */ SAFEARRAY * *SinkCookies) = 0;
        
        virtual /* [helpstring] */ HRESULT STDMETHODCALLTYPE GetEventSourceInfo( 
            long SourceCookie,
            /* [unique][out][in] */ SAFEARRAY * *Events,
            /* [unique][out][in] */ SAFEARRAY * *Latencies,
            /* [unique][out][in] */ SAFEARRAY * *Orders,
            /* [unique][out][in] */ SAFEARRAY * *Logs) = 0;
        
        virtual /* [helpstring] */ HRESULT STDMETHODCALLTYPE GetEventSinkInfo( 
            long SinkCookie,
            /* [unique][out][in] */ SAFEARRAY * *InterestedEvents) = 0;
        
        virtual /* [helpstring] */ HRESULT STDMETHODCALLTYPE SetEventSourceInfo( 
            long SourceCookie,
            /* [unique][in] */ SAFEARRAY * *Events,
            /* [unique][in] */ SAFEARRAY * *Latencies,
            /* [unique][in] */ SAFEARRAY * *Orders,
            /* [unique][in] */ SAFEARRAY * *Logs) = 0;
        
        virtual /* [helpstring] */ HRESULT STDMETHODCALLTYPE SetEventSinkInfo( 
            long SinkCookie,
            /* [unique][in] */ SAFEARRAY * *InterestedEvents) = 0;
        
    };
    
#else 	/* C style interface */

    typedef struct IIviEventManagerVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            IIviEventManager * This,
            /* [in] */ REFIID riid,
            /* [iid_is][out] */ void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            IIviEventManager * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            IIviEventManager * This);
        
        /* [helpstring] */ HRESULT ( STDMETHODCALLTYPE *GetEventSourceLocations )( 
            IIviEventManager * This,
            /* [unique][out][in] */ SAFEARRAY * *HostNames,
            /* [unique][out][in] */ SAFEARRAY * *ProcessIds,
            /* [unique][out][in] */ SAFEARRAY * *SubSystemNames,
            /* [unique][out][in] */ SAFEARRAY * *RoleNames,
            /* [unique][out][in] */ SAFEARRAY * *ViewNames,
            /* [unique][out][in] */ SAFEARRAY * *SourceCookies);
        
        /* [helpstring] */ HRESULT ( STDMETHODCALLTYPE *GetEventSinkLocations )( 
            IIviEventManager * This,
            /* [unique][out][in] */ SAFEARRAY * *HostNames,
            /* [unique][out][in] */ SAFEARRAY * *ProcessIds,
            /* [unique][out][in] */ SAFEARRAY * *SubSystemNames,
            /* [unique][out][in] */ SAFEARRAY * *RoleNames,
            /* [unique][out][in] */ SAFEARRAY * *ViewNames,
            /* [unique][out][in] */ SAFEARRAY * *SinkCookies);
        
        /* [helpstring] */ HRESULT ( STDMETHODCALLTYPE *GetEventSourceInfo )( 
            IIviEventManager * This,
            long SourceCookie,
            /* [unique][out][in] */ SAFEARRAY * *Events,
            /* [unique][out][in] */ SAFEARRAY * *Latencies,
            /* [unique][out][in] */ SAFEARRAY * *Orders,
            /* [unique][out][in] */ SAFEARRAY * *Logs);
        
        /* [helpstring] */ HRESULT ( STDMETHODCALLTYPE *GetEventSinkInfo )( 
            IIviEventManager * This,
            long SinkCookie,
            /* [unique][out][in] */ SAFEARRAY * *InterestedEvents);
        
        /* [helpstring] */ HRESULT ( STDMETHODCALLTYPE *SetEventSourceInfo )( 
            IIviEventManager * This,
            long SourceCookie,
            /* [unique][in] */ SAFEARRAY * *Events,
            /* [unique][in] */ SAFEARRAY * *Latencies,
            /* [unique][in] */ SAFEARRAY * *Orders,
            /* [unique][in] */ SAFEARRAY * *Logs);
        
        /* [helpstring] */ HRESULT ( STDMETHODCALLTYPE *SetEventSinkInfo )( 
            IIviEventManager * This,
            long SinkCookie,
            /* [unique][in] */ SAFEARRAY * *InterestedEvents);
        
        END_INTERFACE
    } IIviEventManagerVtbl;

    interface IIviEventManager
    {
        CONST_VTBL struct IIviEventManagerVtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define IIviEventManager_QueryInterface(This,riid,ppvObject)	\
    (This)->lpVtbl -> QueryInterface(This,riid,ppvObject)

#define IIviEventManager_AddRef(This)	\
    (This)->lpVtbl -> AddRef(This)

#define IIviEventManager_Release(This)	\
    (This)->lpVtbl -> Release(This)


#define IIviEventManager_GetEventSourceLocations(This,HostNames,ProcessIds,SubSystemNames,RoleNames,ViewNames,SourceCookies)	\
    (This)->lpVtbl -> GetEventSourceLocations(This,HostNames,ProcessIds,SubSystemNames,RoleNames,ViewNames,SourceCookies)

#define IIviEventManager_GetEventSinkLocations(This,HostNames,ProcessIds,SubSystemNames,RoleNames,ViewNames,SinkCookies)	\
    (This)->lpVtbl -> GetEventSinkLocations(This,HostNames,ProcessIds,SubSystemNames,RoleNames,ViewNames,SinkCookies)

#define IIviEventManager_GetEventSourceInfo(This,SourceCookie,Events,Latencies,Orders,Logs)	\
    (This)->lpVtbl -> GetEventSourceInfo(This,SourceCookie,Events,Latencies,Orders,Logs)

#define IIviEventManager_GetEventSinkInfo(This,SinkCookie,InterestedEvents)	\
    (This)->lpVtbl -> GetEventSinkInfo(This,SinkCookie,InterestedEvents)

#define IIviEventManager_SetEventSourceInfo(This,SourceCookie,Events,Latencies,Orders,Logs)	\
    (This)->lpVtbl -> SetEventSourceInfo(This,SourceCookie,Events,Latencies,Orders,Logs)

#define IIviEventManager_SetEventSinkInfo(This,SinkCookie,InterestedEvents)	\
    (This)->lpVtbl -> SetEventSinkInfo(This,SinkCookie,InterestedEvents)

#endif /* COBJMACROS */


#endif 	/* C style interface */



/* [helpstring] */ HRESULT STDMETHODCALLTYPE IIviEventManager_GetEventSourceLocations_Proxy( 
    IIviEventManager * This,
    /* [unique][out][in] */ SAFEARRAY * *HostNames,
    /* [unique][out][in] */ SAFEARRAY * *ProcessIds,
    /* [unique][out][in] */ SAFEARRAY * *SubSystemNames,
    /* [unique][out][in] */ SAFEARRAY * *RoleNames,
    /* [unique][out][in] */ SAFEARRAY * *ViewNames,
    /* [unique][out][in] */ SAFEARRAY * *SourceCookies);


void __RPC_STUB IIviEventManager_GetEventSourceLocations_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [helpstring] */ HRESULT STDMETHODCALLTYPE IIviEventManager_GetEventSinkLocations_Proxy( 
    IIviEventManager * This,
    /* [unique][out][in] */ SAFEARRAY * *HostNames,
    /* [unique][out][in] */ SAFEARRAY * *ProcessIds,
    /* [unique][out][in] */ SAFEARRAY * *SubSystemNames,
    /* [unique][out][in] */ SAFEARRAY * *RoleNames,
    /* [unique][out][in] */ SAFEARRAY * *ViewNames,
    /* [unique][out][in] */ SAFEARRAY * *SinkCookies);


void __RPC_STUB IIviEventManager_GetEventSinkLocations_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [helpstring] */ HRESULT STDMETHODCALLTYPE IIviEventManager_GetEventSourceInfo_Proxy( 
    IIviEventManager * This,
    long SourceCookie,
    /* [unique][out][in] */ SAFEARRAY * *Events,
    /* [unique][out][in] */ SAFEARRAY * *Latencies,
    /* [unique][out][in] */ SAFEARRAY * *Orders,
    /* [unique][out][in] */ SAFEARRAY * *Logs);


void __RPC_STUB IIviEventManager_GetEventSourceInfo_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [helpstring] */ HRESULT STDMETHODCALLTYPE IIviEventManager_GetEventSinkInfo_Proxy( 
    IIviEventManager * This,
    long SinkCookie,
    /* [unique][out][in] */ SAFEARRAY * *InterestedEvents);


void __RPC_STUB IIviEventManager_GetEventSinkInfo_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [helpstring] */ HRESULT STDMETHODCALLTYPE IIviEventManager_SetEventSourceInfo_Proxy( 
    IIviEventManager * This,
    long SourceCookie,
    /* [unique][in] */ SAFEARRAY * *Events,
    /* [unique][in] */ SAFEARRAY * *Latencies,
    /* [unique][in] */ SAFEARRAY * *Orders,
    /* [unique][in] */ SAFEARRAY * *Logs);


void __RPC_STUB IIviEventManager_SetEventSourceInfo_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [helpstring] */ HRESULT STDMETHODCALLTYPE IIviEventManager_SetEventSinkInfo_Proxy( 
    IIviEventManager * This,
    long SinkCookie,
    /* [unique][in] */ SAFEARRAY * *InterestedEvents);


void __RPC_STUB IIviEventManager_SetEventSinkInfo_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);



#endif 	/* __IIviEventManager_INTERFACE_DEFINED__ */



#ifndef __IVIEVENTSERVERDLLLib_LIBRARY_DEFINED__
#define __IVIEVENTSERVERDLLLib_LIBRARY_DEFINED__

/* library IVIEVENTSERVERDLLLib */
/* [helpstring][version][uuid] */ 





EXTERN_C const IID LIBID_IVIEVENTSERVERDLLLib;

EXTERN_C const CLSID CLSID_IviEventServerDLL;

#ifdef __cplusplus

class DECLSPEC_UUID("07ADA726-FEC7-4f1e-9CAF-A481F454F340")
IviEventServerDLL;
#endif

EXTERN_C const CLSID CLSID_IviEventEntry;

#ifdef __cplusplus

class DECLSPEC_UUID("2E389BD2-9320-49c6-945F-05AE9EB514BE")
IviEventEntry;
#endif
#endif /* __IVIEVENTSERVERDLLLib_LIBRARY_DEFINED__ */

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


