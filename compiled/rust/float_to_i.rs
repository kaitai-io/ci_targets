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
pub struct FloatToI {
    pub _root: SharedType<FloatToI>,
    pub _parent: SharedType<FloatToI>,
    pub _self: SharedType<Self>,
    single_value: RefCell<f32>,
    double_value: RefCell<f64>,
    _io: RefCell<BytesReader>,
    f_calc_float1: Cell<bool>,
    calc_float1: RefCell<f64>,
    f_calc_float2: Cell<bool>,
    calc_float2: RefCell<f64>,
    f_calc_float3: Cell<bool>,
    calc_float3: RefCell<f64>,
    f_calc_float4: Cell<bool>,
    calc_float4: RefCell<f64>,
    f_double_i: Cell<bool>,
    double_i: RefCell<i32>,
    f_float1_i: Cell<bool>,
    float1_i: RefCell<i32>,
    f_float2_i: Cell<bool>,
    float2_i: RefCell<i32>,
    f_float3_i: Cell<bool>,
    float3_i: RefCell<i32>,
    f_float4_i: Cell<bool>,
    float4_i: RefCell<i32>,
    f_single_i: Cell<bool>,
    single_i: RefCell<i32>,
}
impl KStruct for FloatToI {
    type Root = FloatToI;
    type Parent = FloatToI;

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
        Ok(())
    }
}
impl FloatToI {
    pub fn calc_float1(
        &self
    ) -> KResult<Ref<f64>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_calc_float1.get() {
            return Ok(self.calc_float1.borrow());
        }
        self.f_calc_float1.set(true);
        *self.calc_float1.borrow_mut() = (1.234) as f64;
        Ok(self.calc_float1.borrow())
    }
    pub fn calc_float2(
        &self
    ) -> KResult<Ref<f64>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_calc_float2.get() {
            return Ok(self.calc_float2.borrow());
        }
        self.f_calc_float2.set(true);
        *self.calc_float2.borrow_mut() = (1.5) as f64;
        Ok(self.calc_float2.borrow())
    }
    pub fn calc_float3(
        &self
    ) -> KResult<Ref<f64>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_calc_float3.get() {
            return Ok(self.calc_float3.borrow());
        }
        self.f_calc_float3.set(true);
        *self.calc_float3.borrow_mut() = (1.9) as f64;
        Ok(self.calc_float3.borrow())
    }
    pub fn calc_float4(
        &self
    ) -> KResult<Ref<f64>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_calc_float4.get() {
            return Ok(self.calc_float4.borrow());
        }
        self.f_calc_float4.set(true);
        *self.calc_float4.borrow_mut() = (-2.7) as f64;
        Ok(self.calc_float4.borrow())
    }
    pub fn double_i(
        &self
    ) -> KResult<Ref<i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_double_i.get() {
            return Ok(self.double_i.borrow());
        }
        self.f_double_i.set(true);
        *self.double_i.borrow_mut() = (*self.double_value() as i32) as i32;
        Ok(self.double_i.borrow())
    }
    pub fn float1_i(
        &self
    ) -> KResult<Ref<i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_float1_i.get() {
            return Ok(self.float1_i.borrow());
        }
        self.f_float1_i.set(true);
        *self.float1_i.borrow_mut() = (*self.calc_float1()? as i32) as i32;
        Ok(self.float1_i.borrow())
    }
    pub fn float2_i(
        &self
    ) -> KResult<Ref<i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_float2_i.get() {
            return Ok(self.float2_i.borrow());
        }
        self.f_float2_i.set(true);
        *self.float2_i.borrow_mut() = (*self.calc_float2()? as i32) as i32;
        Ok(self.float2_i.borrow())
    }
    pub fn float3_i(
        &self
    ) -> KResult<Ref<i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_float3_i.get() {
            return Ok(self.float3_i.borrow());
        }
        self.f_float3_i.set(true);
        *self.float3_i.borrow_mut() = (*self.calc_float3()? as i32) as i32;
        Ok(self.float3_i.borrow())
    }
    pub fn float4_i(
        &self
    ) -> KResult<Ref<i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_float4_i.get() {
            return Ok(self.float4_i.borrow());
        }
        self.f_float4_i.set(true);
        *self.float4_i.borrow_mut() = (*self.calc_float4()? as i32) as i32;
        Ok(self.float4_i.borrow())
    }
    pub fn single_i(
        &self
    ) -> KResult<Ref<i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_single_i.get() {
            return Ok(self.single_i.borrow());
        }
        self.f_single_i.set(true);
        *self.single_i.borrow_mut() = (*self.single_value() as i32) as i32;
        Ok(self.single_i.borrow())
    }
}
impl FloatToI {
    pub fn single_value(&self) -> Ref<f32> {
        self.single_value.borrow()
    }
}
impl FloatToI {
    pub fn double_value(&self) -> Ref<f64> {
        self.double_value.borrow()
    }
}
impl FloatToI {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
