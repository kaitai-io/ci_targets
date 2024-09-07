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
pub struct ParamsDef {
    pub _root: SharedType<ParamsDef>,
    pub _parent: SharedType<ParamsDef>,
    pub _self: SharedType<Self>,
    len: RefCell<u32>,
    has_trailer: RefCell<bool>,
    buf: RefCell<String>,
    trailer: RefCell<u8>,
    _io: RefCell<BytesReader>,
}
impl KStruct for ParamsDef {
    type Root = ParamsDef;
    type Parent = ParamsDef;

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
        *self_rc.buf.borrow_mut() = bytes_to_str(&_io.read_bytes(*self_rc.len() as usize)?.into(), "UTF-8")?;
        if *self_rc.has_trailer() {
            *self_rc.trailer.borrow_mut() = _io.read_u1()?.into();
        }
        Ok(())
    }
}
impl ParamsDef {
    pub fn len(&self) -> Ref<u32> {
        self.len.borrow()
    }
}
impl ParamsDef {
    pub fn has_trailer(&self) -> Ref<bool> {
        self.has_trailer.borrow()
    }
}
impl ParamsDef {
    pub fn set_params(&mut self, len: u32, has_trailer: bool) {
        *self.len.borrow_mut() = len;
        *self.has_trailer.borrow_mut() = has_trailer;
    }
}
impl ParamsDef {
}
impl ParamsDef {
    pub fn buf(&self) -> Ref<String> {
        self.buf.borrow()
    }
}
impl ParamsDef {
    pub fn trailer(&self) -> Ref<u8> {
        self.trailer.borrow()
    }
}
impl ParamsDef {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
