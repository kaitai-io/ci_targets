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
pub struct EofExceptionSized {
    pub _root: SharedType<EofExceptionSized>,
    pub _parent: SharedType<EofExceptionSized>,
    pub _self: SharedType<Self>,
    buf: RefCell<OptRc<EofExceptionSized_Foo>>,
    _io: RefCell<BytesReader>,
    buf_raw: RefCell<Vec<u8>>,
}
impl KStruct for EofExceptionSized {
    type Root = EofExceptionSized;
    type Parent = EofExceptionSized;

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
        *self_rc.buf_raw.borrow_mut() = _io.read_bytes(13 as usize)?.into();
        let buf_raw = self_rc.buf_raw.borrow();
        let _t_buf_raw_io = BytesReader::from(buf_raw.clone());
        let t = Self::read_into::<BytesReader, EofExceptionSized_Foo>(&_t_buf_raw_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.buf.borrow_mut() = t;
        Ok(())
    }
}
impl EofExceptionSized {
}
impl EofExceptionSized {
    pub fn buf(&self) -> Ref<OptRc<EofExceptionSized_Foo>> {
        self.buf.borrow()
    }
}
impl EofExceptionSized {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
impl EofExceptionSized {
    pub fn buf_raw(&self) -> Ref<Vec<u8>> {
        self.buf_raw.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct EofExceptionSized_Foo {
    pub _root: SharedType<EofExceptionSized>,
    pub _parent: SharedType<EofExceptionSized>,
    pub _self: SharedType<Self>,
    _io: RefCell<BytesReader>,
}
impl KStruct for EofExceptionSized_Foo {
    type Root = EofExceptionSized;
    type Parent = EofExceptionSized;

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
impl EofExceptionSized_Foo {
}
impl EofExceptionSized_Foo {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
