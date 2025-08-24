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
pub struct ExprIntDiv {
    pub _root: SharedType<ExprIntDiv>,
    pub _parent: SharedType<ExprIntDiv>,
    pub _self: SharedType<Self>,
    int_u: RefCell<u32>,
    int_s: RefCell<i32>,
    _io: RefCell<BytesReader>,
    f_div_neg_const: Cell<bool>,
    div_neg_const: RefCell<i32>,
    f_div_neg_seq: Cell<bool>,
    div_neg_seq: RefCell<i32>,
    f_div_pos_const: Cell<bool>,
    div_pos_const: RefCell<i32>,
    f_div_pos_seq: Cell<bool>,
    div_pos_seq: RefCell<i32>,
}
impl KStruct for ExprIntDiv {
    type Root = ExprIntDiv;
    type Parent = ExprIntDiv;

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
        *self_rc.int_u.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.int_s.borrow_mut() = _io.read_s4le()?.into();
        Ok(())
    }
}
impl ExprIntDiv {
    pub fn div_neg_const(
        &self
    ) -> KResult<Ref<'_, i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_div_neg_const.get() {
            return Ok(self.div_neg_const.borrow());
        }
        self.f_div_neg_const.set(true);
        *self.div_neg_const.borrow_mut() = (((-9837 as i32) / (13 as i32))) as i32;
        Ok(self.div_neg_const.borrow())
    }
    pub fn div_neg_seq(
        &self
    ) -> KResult<Ref<'_, i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_div_neg_seq.get() {
            return Ok(self.div_neg_seq.borrow());
        }
        self.f_div_neg_seq.set(true);
        *self.div_neg_seq.borrow_mut() = (((*self.int_s() as i32) / (13 as i32))) as i32;
        Ok(self.div_neg_seq.borrow())
    }
    pub fn div_pos_const(
        &self
    ) -> KResult<Ref<'_, i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_div_pos_const.get() {
            return Ok(self.div_pos_const.borrow());
        }
        self.f_div_pos_const.set(true);
        *self.div_pos_const.borrow_mut() = (((9837 as i32) / (13 as i32))) as i32;
        Ok(self.div_pos_const.borrow())
    }
    pub fn div_pos_seq(
        &self
    ) -> KResult<Ref<'_, i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_div_pos_seq.get() {
            return Ok(self.div_pos_seq.borrow());
        }
        self.f_div_pos_seq.set(true);
        *self.div_pos_seq.borrow_mut() = (((*self.int_u() as u32) / (13 as u32))) as i32;
        Ok(self.div_pos_seq.borrow())
    }
}
impl ExprIntDiv {
    pub fn int_u(&self) -> Ref<'_, u32> {
        self.int_u.borrow()
    }
}
impl ExprIntDiv {
    pub fn int_s(&self) -> Ref<'_, i32> {
        self.int_s.borrow()
    }
}
impl ExprIntDiv {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
