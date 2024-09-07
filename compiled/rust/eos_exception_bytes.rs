// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#![allow(unused_imports)]
#![allow(non_snake_case)]
#![allow(non_camel_case_types)]
#![allow(irrefutable_let_patterns)]
#![allow(unused_comparisons)]

extern crate kaitai;
use kaitai::*;
use std::convert::{TryFrom, TryInto};
use std::cell::{Ref, Cell, RefCell};
use std::rc::{Rc, Weak};

#[derive(Default, Debug, Clone)]
pub struct EosExceptionBytes {
    pub _root: SharedType<EosExceptionBytes>,
    pub _parent: SharedType<EosExceptionBytes>,
    pub _self: SharedType<Self>,
    envelope: RefCell<OptRc<EosExceptionBytes_Data>>,
    _io: RefCell<BytesReader>,
    envelope_raw: RefCell<Vec<u8>>,
}
impl KStruct for EosExceptionBytes {
    type Root = EosExceptionBytes;
    type Parent = EosExceptionBytes;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        *self_rc.envelope_raw.borrow_mut() = _io.read_bytes(6 as usize)?.into();
        let envelope_raw = self_rc.envelope_raw.borrow();
        let _t_envelope_raw_io = BytesReader::from(envelope_raw.clone());
        let t = Self::read_into::<BytesReader, EosExceptionBytes_Data>(&_t_envelope_raw_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.envelope.borrow_mut() = t;
        Ok(())
    }
}
impl EosExceptionBytes {
}
impl EosExceptionBytes {
    pub fn envelope(&self) -> Ref<OptRc<EosExceptionBytes_Data>> {
        self.envelope.borrow()
    }
}
impl EosExceptionBytes {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
impl EosExceptionBytes {
    pub fn envelope_raw(&self) -> Ref<Vec<u8>> {
        self.envelope_raw.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct EosExceptionBytes_Data {
    pub _root: SharedType<EosExceptionBytes>,
    pub _parent: SharedType<EosExceptionBytes>,
    pub _self: SharedType<Self>,
    buf: RefCell<Vec<u8>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for EosExceptionBytes_Data {
    type Root = EosExceptionBytes;
    type Parent = EosExceptionBytes;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        *self_rc.buf.borrow_mut() = _io.read_bytes(7 as usize)?.into();
        Ok(())
    }
}
impl EosExceptionBytes_Data {
}
impl EosExceptionBytes_Data {
    pub fn buf(&self) -> Ref<Vec<u8>> {
        self.buf.borrow()
    }
}
impl EosExceptionBytes_Data {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
