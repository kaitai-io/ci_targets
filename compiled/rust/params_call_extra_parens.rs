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
pub struct ParamsCallExtraParens {
    pub _root: SharedType<ParamsCallExtraParens>,
    pub _parent: SharedType<ParamsCallExtraParens>,
    pub _self: SharedType<Self>,
    buf1: RefCell<OptRc<ParamsCallExtraParens_MyStr1>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for ParamsCallExtraParens {
    type Root = ParamsCallExtraParens;
    type Parent = ParamsCallExtraParens;

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
        let f = |t : &mut ParamsCallExtraParens_MyStr1| Ok(t.set_params((5).try_into().map_err(|_| KError::CastError)?));
        let t = Self::read_into_with_init::<_, ParamsCallExtraParens_MyStr1>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()), &f)?.into();
        *self_rc.buf1.borrow_mut() = t;
        Ok(())
    }
}
impl ParamsCallExtraParens {
}
impl ParamsCallExtraParens {
    pub fn buf1(&self) -> Ref<'_, OptRc<ParamsCallExtraParens_MyStr1>> {
        self.buf1.borrow()
    }
}
impl ParamsCallExtraParens {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct ParamsCallExtraParens_MyStr1 {
    pub _root: SharedType<ParamsCallExtraParens>,
    pub _parent: SharedType<ParamsCallExtraParens>,
    pub _self: SharedType<Self>,
    len: RefCell<u32>,
    body: RefCell<String>,
    _io: RefCell<BytesReader>,
}
impl KStruct for ParamsCallExtraParens_MyStr1 {
    type Root = ParamsCallExtraParens;
    type Parent = ParamsCallExtraParens;

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
impl ParamsCallExtraParens_MyStr1 {
    pub fn len(&self) -> Ref<'_, u32> {
        self.len.borrow()
    }
}
impl ParamsCallExtraParens_MyStr1 {
    pub fn set_params(&mut self, len: u32) {
        *self.len.borrow_mut() = len;
    }
}
impl ParamsCallExtraParens_MyStr1 {
}
impl ParamsCallExtraParens_MyStr1 {
    pub fn body(&self) -> Ref<'_, String> {
        self.body.borrow()
    }
}
impl ParamsCallExtraParens_MyStr1 {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
