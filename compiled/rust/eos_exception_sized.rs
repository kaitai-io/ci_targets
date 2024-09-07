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
pub struct EosExceptionSized {
    pub _root: SharedType<EosExceptionSized>,
    pub _parent: SharedType<EosExceptionSized>,
    pub _self: SharedType<Self>,
    envelope: RefCell<OptRc<EosExceptionSized_Data>>,
    _io: RefCell<BytesReader>,
    envelope_raw: RefCell<Vec<u8>>,
}
impl KStruct for EosExceptionSized {
    type Root = EosExceptionSized;
    type Parent = EosExceptionSized;

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
        let t = Self::read_into::<BytesReader, EosExceptionSized_Data>(&_t_envelope_raw_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.envelope.borrow_mut() = t;
        Ok(())
    }
}
impl EosExceptionSized {
}
impl EosExceptionSized {
    pub fn envelope(&self) -> Ref<OptRc<EosExceptionSized_Data>> {
        self.envelope.borrow()
    }
}
impl EosExceptionSized {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
impl EosExceptionSized {
    pub fn envelope_raw(&self) -> Ref<Vec<u8>> {
        self.envelope_raw.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct EosExceptionSized_Data {
    pub _root: SharedType<EosExceptionSized>,
    pub _parent: SharedType<EosExceptionSized>,
    pub _self: SharedType<Self>,
    buf: RefCell<OptRc<EosExceptionSized_Foo>>,
    _io: RefCell<BytesReader>,
    buf_raw: RefCell<Vec<u8>>,
}
impl KStruct for EosExceptionSized_Data {
    type Root = EosExceptionSized;
    type Parent = EosExceptionSized;

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
        *self_rc.buf_raw.borrow_mut() = _io.read_bytes(7 as usize)?.into();
        let buf_raw = self_rc.buf_raw.borrow();
        let _t_buf_raw_io = BytesReader::from(buf_raw.clone());
        let t = Self::read_into::<BytesReader, EosExceptionSized_Foo>(&_t_buf_raw_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.buf.borrow_mut() = t;
        Ok(())
    }
}
impl EosExceptionSized_Data {
}
impl EosExceptionSized_Data {
    pub fn buf(&self) -> Ref<OptRc<EosExceptionSized_Foo>> {
        self.buf.borrow()
    }
}
impl EosExceptionSized_Data {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
impl EosExceptionSized_Data {
    pub fn buf_raw(&self) -> Ref<Vec<u8>> {
        self.buf_raw.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct EosExceptionSized_Foo {
    pub _root: SharedType<EosExceptionSized>,
    pub _parent: SharedType<EosExceptionSized_Data>,
    pub _self: SharedType<Self>,
    _io: RefCell<BytesReader>,
}
impl KStruct for EosExceptionSized_Foo {
    type Root = EosExceptionSized;
    type Parent = EosExceptionSized_Data;

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
        Ok(())
    }
}
impl EosExceptionSized_Foo {
}
impl EosExceptionSized_Foo {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
