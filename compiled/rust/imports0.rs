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
pub struct Imports0 {
    pub _root: SharedType<Imports0>,
    pub _parent: SharedType<Imports0>,
    pub _self: SharedType<Self>,
    two: RefCell<u8>,
    hw: RefCell<OptRc<HelloWorld>>,
    _io: RefCell<BytesReader>,
    f_hw_one: Cell<bool>,
    hw_one: RefCell<u8>,
}
impl KStruct for Imports0 {
    type Root = Imports0;
    type Parent = Imports0;

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
        *self_rc.two.borrow_mut() = _io.read_u1()?.into();
        let t = Self::read_into::<_, HelloWorld>(&*_io, None, None)?.into();
        *self_rc.hw.borrow_mut() = t;
        Ok(())
    }
}
impl Imports0 {
    pub fn hw_one(
        &self
    ) -> KResult<Ref<'_, u8>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_hw_one.get() {
            return Ok(self.hw_one.borrow());
        }
        self.f_hw_one.set(true);
        *self.hw_one.borrow_mut() = (*self.hw().one()) as u8;
        Ok(self.hw_one.borrow())
    }
}
impl Imports0 {
    pub fn two(&self) -> Ref<'_, u8> {
        self.two.borrow()
    }
}
impl Imports0 {
    pub fn hw(&self) -> Ref<'_, OptRc<HelloWorld>> {
        self.hw.borrow()
    }
}
impl Imports0 {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
