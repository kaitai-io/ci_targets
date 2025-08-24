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
pub struct EosExceptionU4 {
    pub _root: SharedType<EosExceptionU4>,
    pub _parent: SharedType<EosExceptionU4>,
    pub _self: SharedType<Self>,
    envelope: RefCell<OptRc<EosExceptionU4_Data>>,
    _io: RefCell<BytesReader>,
    envelope_raw: RefCell<Vec<u8>>,
}
impl KStruct for EosExceptionU4 {
    type Root = EosExceptionU4;
    type Parent = EosExceptionU4;

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
        let t = Self::read_into::<BytesReader, EosExceptionU4_Data>(&_t_envelope_raw_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.envelope.borrow_mut() = t;
        Ok(())
    }
}
impl EosExceptionU4 {
}
impl EosExceptionU4 {
    pub fn envelope(&self) -> Ref<'_, OptRc<EosExceptionU4_Data>> {
        self.envelope.borrow()
    }
}
impl EosExceptionU4 {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
impl EosExceptionU4 {
    pub fn envelope_raw(&self) -> Ref<'_, Vec<u8>> {
        self.envelope_raw.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct EosExceptionU4_Data {
    pub _root: SharedType<EosExceptionU4>,
    pub _parent: SharedType<EosExceptionU4>,
    pub _self: SharedType<Self>,
    prebuf: RefCell<Vec<u8>>,
    fail_int: RefCell<u32>,
    _io: RefCell<BytesReader>,
}
impl KStruct for EosExceptionU4_Data {
    type Root = EosExceptionU4;
    type Parent = EosExceptionU4;

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
        *self_rc.prebuf.borrow_mut() = _io.read_bytes(3 as usize)?.into();
        *self_rc.fail_int.borrow_mut() = _io.read_u4le()?.into();
        Ok(())
    }
}
impl EosExceptionU4_Data {
}
impl EosExceptionU4_Data {
    pub fn prebuf(&self) -> Ref<'_, Vec<u8>> {
        self.prebuf.borrow()
    }
}
impl EosExceptionU4_Data {
    pub fn fail_int(&self) -> Ref<'_, u32> {
        self.fail_int.borrow()
    }
}
impl EosExceptionU4_Data {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
