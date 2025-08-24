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
use super::imports_circular_b::ImportsCircularB;

#[derive(Default, Debug, Clone)]
pub struct ImportsCircularA {
    pub _root: SharedType<ImportsCircularA>,
    pub _parent: SharedType<ImportsCircularA>,
    pub _self: SharedType<Self>,
    code: RefCell<u8>,
    two: RefCell<OptRc<ImportsCircularB>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for ImportsCircularA {
    type Root = ImportsCircularA;
    type Parent = ImportsCircularA;

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
        *self_rc.code.borrow_mut() = _io.read_u1()?.into();
        let t = Self::read_into::<_, ImportsCircularB>(&*_io, None, None)?.into();
        *self_rc.two.borrow_mut() = t;
        Ok(())
    }
}
impl ImportsCircularA {
}
impl ImportsCircularA {
    pub fn code(&self) -> Ref<'_, u8> {
        self.code.borrow()
    }
}
impl ImportsCircularA {
    pub fn two(&self) -> Ref<'_, OptRc<ImportsCircularB>> {
        self.two.borrow()
    }
}
impl ImportsCircularA {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
