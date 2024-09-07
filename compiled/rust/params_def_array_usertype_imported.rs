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
use super::hello_world::HelloWorld;

#[derive(Default, Debug, Clone)]
pub struct ParamsDefArrayUsertypeImported {
    pub _root: SharedType<ParamsDefArrayUsertypeImported>,
    pub _parent: SharedType<ParamsDefArrayUsertypeImported>,
    pub _self: SharedType<Self>,
    hws_param: RefCell<Vec<OptRc<HelloWorld>>>,
    _io: RefCell<BytesReader>,
    f_hw0_one: Cell<bool>,
    hw0_one: RefCell<u8>,
    f_hw1_one: Cell<bool>,
    hw1_one: RefCell<u8>,
}
impl KStruct for ParamsDefArrayUsertypeImported {
    type Root = ParamsDefArrayUsertypeImported;
    type Parent = ParamsDefArrayUsertypeImported;

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
impl ParamsDefArrayUsertypeImported {
    pub fn hws_param(&self) -> Ref<Vec<OptRc<HelloWorld>>> {
        self.hws_param.borrow()
    }
}
impl ParamsDefArrayUsertypeImported {
    pub fn set_params(&mut self, hws_param: &Vec<OptRc<HelloWorld>>) {
        *self.hws_param.borrow_mut() = hws_param.clone();
    }
}
impl ParamsDefArrayUsertypeImported {
    pub fn hw0_one(
        &self
    ) -> KResult<Ref<u8>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_hw0_one.get() {
            return Ok(self.hw0_one.borrow());
        }
        self.f_hw0_one.set(true);
        *self.hw0_one.borrow_mut() = (*self.hws_param()[0 as usize].one()) as u8;
        Ok(self.hw0_one.borrow())
    }
    pub fn hw1_one(
        &self
    ) -> KResult<Ref<u8>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_hw1_one.get() {
            return Ok(self.hw1_one.borrow());
        }
        self.f_hw1_one.set(true);
        *self.hw1_one.borrow_mut() = (*self.hws_param()[1 as usize].one()) as u8;
        Ok(self.hw1_one.borrow())
    }
}
impl ParamsDefArrayUsertypeImported {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
