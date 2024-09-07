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
pub struct FloatingPoints {
    pub _root: SharedType<FloatingPoints>,
    pub _parent: SharedType<FloatingPoints>,
    pub _self: SharedType<Self>,
    single_value: RefCell<f32>,
    double_value: RefCell<f64>,
    single_value_be: RefCell<f32>,
    double_value_be: RefCell<f64>,
    approximate_value: RefCell<f32>,
    _io: RefCell<BytesReader>,
    f_double_value_plus_float: Cell<bool>,
    double_value_plus_float: RefCell<f64>,
    f_single_value_plus_float: Cell<bool>,
    single_value_plus_float: RefCell<f64>,
    f_single_value_plus_int: Cell<bool>,
    single_value_plus_int: RefCell<f64>,
}
impl KStruct for FloatingPoints {
    type Root = FloatingPoints;
    type Parent = FloatingPoints;

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
        *self_rc.single_value.borrow_mut() = _io.read_f4le()?.into();
        *self_rc.double_value.borrow_mut() = _io.read_f8le()?.into();
        *self_rc.single_value_be.borrow_mut() = _io.read_f4be()?.into();
        *self_rc.double_value_be.borrow_mut() = _io.read_f8be()?.into();
        *self_rc.approximate_value.borrow_mut() = _io.read_f4le()?.into();
        Ok(())
    }
}
impl FloatingPoints {
    pub fn double_value_plus_float(
        &self
    ) -> KResult<Ref<f64>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_double_value_plus_float.get() {
            return Ok(self.double_value_plus_float.borrow());
        }
        self.f_double_value_plus_float.set(true);
        *self.double_value_plus_float.borrow_mut() = (((*self.double_value() as f64) + (0.05 as f64))) as f64;
        Ok(self.double_value_plus_float.borrow())
    }
    pub fn single_value_plus_float(
        &self
    ) -> KResult<Ref<f64>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_single_value_plus_float.get() {
            return Ok(self.single_value_plus_float.borrow());
        }
        self.f_single_value_plus_float.set(true);
        *self.single_value_plus_float.borrow_mut() = (((*self.single_value() as f64) + (0.5 as f64))) as f64;
        Ok(self.single_value_plus_float.borrow())
    }
    pub fn single_value_plus_int(
        &self
    ) -> KResult<Ref<f64>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_single_value_plus_int.get() {
            return Ok(self.single_value_plus_int.borrow());
        }
        self.f_single_value_plus_int.set(true);
        *self.single_value_plus_int.borrow_mut() = (((*self.single_value() as f64) + (1 as f64))) as f64;
        Ok(self.single_value_plus_int.borrow())
    }
}
impl FloatingPoints {
    pub fn single_value(&self) -> Ref<f32> {
        self.single_value.borrow()
    }
}
impl FloatingPoints {
    pub fn double_value(&self) -> Ref<f64> {
        self.double_value.borrow()
    }
}
impl FloatingPoints {
    pub fn single_value_be(&self) -> Ref<f32> {
        self.single_value_be.borrow()
    }
}
impl FloatingPoints {
    pub fn double_value_be(&self) -> Ref<f64> {
        self.double_value_be.borrow()
    }
}
impl FloatingPoints {
    pub fn approximate_value(&self) -> Ref<f32> {
        self.approximate_value.borrow()
    }
}
impl FloatingPoints {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
