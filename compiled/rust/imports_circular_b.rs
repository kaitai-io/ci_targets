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
use super::imports_circular_a::ImportsCircularA;

#[derive(Default, Debug, Clone)]
pub struct ImportsCircularB {
    pub _root: SharedType<ImportsCircularB>,
    pub _parent: SharedType<ImportsCircularB>,
    pub _self: SharedType<Self>,
    initial: RefCell<u8>,
    back_ref: RefCell<OptRc<ImportsCircularA>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for ImportsCircularB {
    type Root = ImportsCircularB;
    type Parent = ImportsCircularB;

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
        *self_rc.initial.borrow_mut() = _io.read_u1()?.into();
        if ((*self_rc.initial() as u8) == (65 as u8)) {
            let t = Self::read_into::<_, ImportsCircularA>(&*_io, None, None)?.into();
            *self_rc.back_ref.borrow_mut() = t;
        }
        Ok(())
    }
}
impl ImportsCircularB {
}
impl ImportsCircularB {
    pub fn initial(&self) -> Ref<u8> {
        self.initial.borrow()
    }
}
impl ImportsCircularB {
    pub fn back_ref(&self) -> Ref<OptRc<ImportsCircularA>> {
        self.back_ref.borrow()
    }
}
impl ImportsCircularB {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
