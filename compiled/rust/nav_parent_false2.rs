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
pub struct NavParentFalse2 {
    pub _root: SharedType<NavParentFalse2>,
    pub _parent: SharedType<NavParentFalse2>,
    pub _self: SharedType<Self>,
    parentless: RefCell<OptRc<NavParentFalse2_Child>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for NavParentFalse2 {
    type Root = NavParentFalse2;
    type Parent = NavParentFalse2;

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
        let t = Self::read_into::<_, NavParentFalse2_Child>(&*_io, Some(self_rc._root.clone()), None)?.into();
        *self_rc.parentless.borrow_mut() = t;
        Ok(())
    }
}
impl NavParentFalse2 {
}
impl NavParentFalse2 {
    pub fn parentless(&self) -> Ref<'_, OptRc<NavParentFalse2_Child>> {
        self.parentless.borrow()
    }
}
impl NavParentFalse2 {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct NavParentFalse2_Child {
    pub _root: SharedType<NavParentFalse2>,
    pub _parent: SharedType<KStructUnit>,
    pub _self: SharedType<Self>,
    foo: RefCell<u8>,
    _io: RefCell<BytesReader>,
}
impl KStruct for NavParentFalse2_Child {
    type Root = NavParentFalse2;
    type Parent = KStructUnit;

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
        *self_rc.foo.borrow_mut() = _io.read_u1()?.into();
        Ok(())
    }
}
impl NavParentFalse2_Child {
}
impl NavParentFalse2_Child {
    pub fn foo(&self) -> Ref<'_, u8> {
        self.foo.borrow()
    }
}
impl NavParentFalse2_Child {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
