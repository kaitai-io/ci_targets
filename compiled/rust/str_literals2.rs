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
pub struct StrLiterals2 {
    pub _root: SharedType<StrLiterals2>,
    pub _parent: SharedType<StrLiterals2>,
    pub _self: SharedType<Self>,
    _io: RefCell<BytesReader>,
    f_at_sign: Cell<bool>,
    at_sign: RefCell<String>,
    f_dollar1: Cell<bool>,
    dollar1: RefCell<String>,
    f_dollar2: Cell<bool>,
    dollar2: RefCell<String>,
    f_hash: Cell<bool>,
    hash: RefCell<String>,
}
impl KStruct for StrLiterals2 {
    type Root = StrLiterals2;
    type Parent = StrLiterals2;

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
impl StrLiterals2 {
    pub fn at_sign(
        &self
    ) -> KResult<Ref<'_, String>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_at_sign.get() {
            return Ok(self.at_sign.borrow());
        }
        self.f_at_sign.set(true);
        *self.at_sign.borrow_mut() = "@foo".to_string();
        Ok(self.at_sign.borrow())
    }
    pub fn dollar1(
        &self
    ) -> KResult<Ref<'_, String>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_dollar1.get() {
            return Ok(self.dollar1.borrow());
        }
        self.f_dollar1.set(true);
        *self.dollar1.borrow_mut() = "$foo".to_string();
        Ok(self.dollar1.borrow())
    }
    pub fn dollar2(
        &self
    ) -> KResult<Ref<'_, String>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_dollar2.get() {
            return Ok(self.dollar2.borrow());
        }
        self.f_dollar2.set(true);
        *self.dollar2.borrow_mut() = "${foo}".to_string();
        Ok(self.dollar2.borrow())
    }
    pub fn hash(
        &self
    ) -> KResult<Ref<'_, String>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_hash.get() {
            return Ok(self.hash.borrow());
        }
        self.f_hash.set(true);
        *self.hash.borrow_mut() = "#{foo}".to_string();
        Ok(self.hash.borrow())
    }
}
impl StrLiterals2 {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
