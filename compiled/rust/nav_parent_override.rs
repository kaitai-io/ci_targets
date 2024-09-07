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
pub struct NavParentOverride {
    pub _root: SharedType<NavParentOverride>,
    pub _parent: SharedType<NavParentOverride>,
    pub _self: SharedType<Self>,
    child_size: RefCell<u8>,
    child_1: RefCell<OptRc<NavParentOverride_Child>>,
    mediator_2: RefCell<OptRc<NavParentOverride_Mediator>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for NavParentOverride {
    type Root = NavParentOverride;
    type Parent = NavParentOverride;

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
        *self_rc.child_size.borrow_mut() = _io.read_u1()?.into();
        let t = Self::read_into::<_, NavParentOverride_Child>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.child_1.borrow_mut() = t;
        let t = Self::read_into::<_, NavParentOverride_Mediator>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.mediator_2.borrow_mut() = t;
        Ok(())
    }
}
impl NavParentOverride {
}
impl NavParentOverride {
    pub fn child_size(&self) -> Ref<u8> {
        self.child_size.borrow()
    }
}
impl NavParentOverride {
    pub fn child_1(&self) -> Ref<OptRc<NavParentOverride_Child>> {
        self.child_1.borrow()
    }
}
impl NavParentOverride {
    pub fn mediator_2(&self) -> Ref<OptRc<NavParentOverride_Mediator>> {
        self.mediator_2.borrow()
    }
}
impl NavParentOverride {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct NavParentOverride_Child {
    pub _root: SharedType<NavParentOverride>,
    pub _parent: SharedType<NavParentOverride>,
    pub _self: SharedType<Self>,
    data: RefCell<Vec<u8>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for NavParentOverride_Child {
    type Root = NavParentOverride;
    type Parent = NavParentOverride;

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
        *self_rc.data.borrow_mut() = _io.read_bytes(*_prc.as_ref().unwrap().child_size() as usize)?.into();
        Ok(())
    }
}
impl NavParentOverride_Child {
}
impl NavParentOverride_Child {
    pub fn data(&self) -> Ref<Vec<u8>> {
        self.data.borrow()
    }
}
impl NavParentOverride_Child {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct NavParentOverride_Mediator {
    pub _root: SharedType<NavParentOverride>,
    pub _parent: SharedType<NavParentOverride>,
    pub _self: SharedType<Self>,
    child_2: RefCell<OptRc<NavParentOverride_Child>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for NavParentOverride_Mediator {
    type Root = NavParentOverride;
    type Parent = NavParentOverride;

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
        let t = Self::read_into::<_, NavParentOverride_Child>(&*_io, Some(self_rc._root.clone()), Some(SharedType::new(_prc.as_ref().unwrap().clone())))?.into();
        *self_rc.child_2.borrow_mut() = t;
        Ok(())
    }
}
impl NavParentOverride_Mediator {
}
impl NavParentOverride_Mediator {
    pub fn child_2(&self) -> Ref<OptRc<NavParentOverride_Child>> {
        self.child_2.borrow()
    }
}
impl NavParentOverride_Mediator {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
