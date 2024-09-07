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
pub struct ParamsCall {
    pub _root: SharedType<ParamsCall>,
    pub _parent: SharedType<ParamsCall>,
    pub _self: SharedType<Self>,
    buf1: RefCell<OptRc<ParamsCall_MyStr1>>,
    buf2: RefCell<OptRc<ParamsCall_MyStr2>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for ParamsCall {
    type Root = ParamsCall;
    type Parent = ParamsCall;

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
        let f = |t : &mut ParamsCall_MyStr1| Ok(t.set_params((5).try_into().map_err(|_| KError::CastError)?));
        let t = Self::read_into_with_init::<_, ParamsCall_MyStr1>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()), &f)?.into();
        *self_rc.buf1.borrow_mut() = t;
        let f = |t : &mut ParamsCall_MyStr2| Ok(t.set_params(((2 + 3)).try_into().map_err(|_| KError::CastError)?, true));
        let t = Self::read_into_with_init::<_, ParamsCall_MyStr2>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()), &f)?.into();
        *self_rc.buf2.borrow_mut() = t;
        Ok(())
    }
}
impl ParamsCall {
}
impl ParamsCall {
    pub fn buf1(&self) -> Ref<OptRc<ParamsCall_MyStr1>> {
        self.buf1.borrow()
    }
}
impl ParamsCall {
    pub fn buf2(&self) -> Ref<OptRc<ParamsCall_MyStr2>> {
        self.buf2.borrow()
    }
}
impl ParamsCall {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct ParamsCall_MyStr1 {
    pub _root: SharedType<ParamsCall>,
    pub _parent: SharedType<ParamsCall>,
    pub _self: SharedType<Self>,
    len: RefCell<u32>,
    body: RefCell<String>,
    _io: RefCell<BytesReader>,
}
impl KStruct for ParamsCall_MyStr1 {
    type Root = ParamsCall;
    type Parent = ParamsCall;

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
        *self_rc.body.borrow_mut() = bytes_to_str(&_io.read_bytes(*self_rc.len() as usize)?.into(), "UTF-8")?;
        Ok(())
    }
}
impl ParamsCall_MyStr1 {
    pub fn len(&self) -> Ref<u32> {
        self.len.borrow()
    }
}
impl ParamsCall_MyStr1 {
    pub fn set_params(&mut self, len: u32) {
        *self.len.borrow_mut() = len;
    }
}
impl ParamsCall_MyStr1 {
}
impl ParamsCall_MyStr1 {
    pub fn body(&self) -> Ref<String> {
        self.body.borrow()
    }
}
impl ParamsCall_MyStr1 {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct ParamsCall_MyStr2 {
    pub _root: SharedType<ParamsCall>,
    pub _parent: SharedType<ParamsCall>,
    pub _self: SharedType<Self>,
    len: RefCell<u32>,
    has_trailer: RefCell<bool>,
    body: RefCell<String>,
    trailer: RefCell<u8>,
    _io: RefCell<BytesReader>,
}
impl KStruct for ParamsCall_MyStr2 {
    type Root = ParamsCall;
    type Parent = ParamsCall;

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
        *self_rc.body.borrow_mut() = bytes_to_str(&_io.read_bytes(*self_rc.len() as usize)?.into(), "UTF-8")?;
        if *self_rc.has_trailer() {
            *self_rc.trailer.borrow_mut() = _io.read_u1()?.into();
        }
        Ok(())
    }
}
impl ParamsCall_MyStr2 {
    pub fn len(&self) -> Ref<u32> {
        self.len.borrow()
    }
}
impl ParamsCall_MyStr2 {
    pub fn has_trailer(&self) -> Ref<bool> {
        self.has_trailer.borrow()
    }
}
impl ParamsCall_MyStr2 {
    pub fn set_params(&mut self, len: u32, has_trailer: bool) {
        *self.len.borrow_mut() = len;
        *self.has_trailer.borrow_mut() = has_trailer;
    }
}
impl ParamsCall_MyStr2 {
}
impl ParamsCall_MyStr2 {
    pub fn body(&self) -> Ref<String> {
        self.body.borrow()
    }
}
impl ParamsCall_MyStr2 {
    pub fn trailer(&self) -> Ref<u8> {
        self.trailer.borrow()
    }
}
impl ParamsCall_MyStr2 {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
