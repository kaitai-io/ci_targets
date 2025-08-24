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
pub struct TypeIntUnaryOp {
    pub _root: SharedType<TypeIntUnaryOp>,
    pub _parent: SharedType<TypeIntUnaryOp>,
    pub _self: SharedType<Self>,
    value_s2: RefCell<i16>,
    value_s8: RefCell<i64>,
    _io: RefCell<BytesReader>,
    f_unary_s2: Cell<bool>,
    unary_s2: RefCell<i32>,
    f_unary_s8: Cell<bool>,
    unary_s8: RefCell<i64>,
}
impl KStruct for TypeIntUnaryOp {
    type Root = TypeIntUnaryOp;
    type Parent = TypeIntUnaryOp;

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
        *self_rc.value_s2.borrow_mut() = _io.read_s2le()?.into();
        *self_rc.value_s8.borrow_mut() = _io.read_s8le()?.into();
        Ok(())
    }
}
impl TypeIntUnaryOp {
    pub fn unary_s2(
        &self
    ) -> KResult<Ref<'_, i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_unary_s2.get() {
            return Ok(self.unary_s2.borrow());
        }
        self.f_unary_s2.set(true);
        *self.unary_s2.borrow_mut() = (-(*self.value_s2())) as i32;
        Ok(self.unary_s2.borrow())
    }
    pub fn unary_s8(
        &self
    ) -> KResult<Ref<'_, i64>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_unary_s8.get() {
            return Ok(self.unary_s8.borrow());
        }
        self.f_unary_s8.set(true);
        *self.unary_s8.borrow_mut() = (-(*self.value_s8())) as i64;
        Ok(self.unary_s8.borrow())
    }
}
impl TypeIntUnaryOp {
    pub fn value_s2(&self) -> Ref<'_, i16> {
        self.value_s2.borrow()
    }
}
impl TypeIntUnaryOp {
    pub fn value_s8(&self) -> Ref<'_, i64> {
        self.value_s8.borrow()
    }
}
impl TypeIntUnaryOp {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
