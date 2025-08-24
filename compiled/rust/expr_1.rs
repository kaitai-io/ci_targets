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
pub struct Expr1 {
    pub _root: SharedType<Expr1>,
    pub _parent: SharedType<Expr1>,
    pub _self: SharedType<Self>,
    len_of_1: RefCell<u16>,
    str1: RefCell<String>,
    _io: RefCell<BytesReader>,
    f_len_of_1_mod: Cell<bool>,
    len_of_1_mod: RefCell<i32>,
    f_str1_len: Cell<bool>,
    str1_len: RefCell<i32>,
}
impl KStruct for Expr1 {
    type Root = Expr1;
    type Parent = Expr1;

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
        *self_rc.len_of_1.borrow_mut() = _io.read_u2le()?.into();
        *self_rc.str1.borrow_mut() = bytes_to_str(&_io.read_bytes(*self_rc.len_of_1_mod()? as usize)?.into(), "ASCII")?;
        Ok(())
    }
}
impl Expr1 {
    pub fn len_of_1_mod(
        &self
    ) -> KResult<Ref<'_, i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_len_of_1_mod.get() {
            return Ok(self.len_of_1_mod.borrow());
        }
        self.f_len_of_1_mod.set(true);
        *self.len_of_1_mod.borrow_mut() = (((*self.len_of_1() as u16) - (2 as u16))) as i32;
        Ok(self.len_of_1_mod.borrow())
    }
    pub fn str1_len(
        &self
    ) -> KResult<Ref<'_, i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_str1_len.get() {
            return Ok(self.str1_len.borrow());
        }
        self.f_str1_len.set(true);
        *self.str1_len.borrow_mut() = (self.str1().len()) as i32;
        Ok(self.str1_len.borrow())
    }
}
impl Expr1 {
    pub fn len_of_1(&self) -> Ref<'_, u16> {
        self.len_of_1.borrow()
    }
}
impl Expr1 {
    pub fn str1(&self) -> Ref<'_, String> {
        self.str1.borrow()
    }
}
impl Expr1 {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
