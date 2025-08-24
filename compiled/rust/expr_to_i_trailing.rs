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
pub struct ExprToITrailing {
    pub _root: SharedType<ExprToITrailing>,
    pub _parent: SharedType<ExprToITrailing>,
    pub _self: SharedType<Self>,
    _io: RefCell<BytesReader>,
    f_to_i_garbage: Cell<bool>,
    to_i_garbage: RefCell<i32>,
    f_to_i_r10: Cell<bool>,
    to_i_r10: RefCell<i32>,
    f_to_i_r16: Cell<bool>,
    to_i_r16: RefCell<i32>,
}
impl KStruct for ExprToITrailing {
    type Root = ExprToITrailing;
    type Parent = ExprToITrailing;

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
impl ExprToITrailing {
    pub fn to_i_garbage(
        &self
    ) -> KResult<Ref<'_, i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_to_i_garbage.get() {
            return Ok(self.to_i_garbage.borrow());
        }
        self.f_to_i_garbage.set(true);
        *self.to_i_garbage.borrow_mut() = ("123_.^".parse::<i32>().map_err(|_| KError::CastError)?) as i32;
        Ok(self.to_i_garbage.borrow())
    }
    pub fn to_i_r10(
        &self
    ) -> KResult<Ref<'_, i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_to_i_r10.get() {
            return Ok(self.to_i_r10.borrow());
        }
        self.f_to_i_r10.set(true);
        *self.to_i_r10.borrow_mut() = ("9173abc".parse::<i32>().map_err(|_| KError::CastError)?) as i32;
        Ok(self.to_i_r10.borrow())
    }
    pub fn to_i_r16(
        &self
    ) -> KResult<Ref<'_, i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_to_i_r16.get() {
            return Ok(self.to_i_r16.borrow());
        }
        self.f_to_i_r16.set(true);
        *self.to_i_r16.borrow_mut() = (i32::from_str_radix("9173abc", 16).map_err(|_| KError::CastError)?) as i32;
        Ok(self.to_i_r16.borrow())
    }
}
impl ExprToITrailing {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
