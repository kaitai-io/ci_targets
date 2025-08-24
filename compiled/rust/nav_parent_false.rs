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
pub struct NavParentFalse {
    pub _root: SharedType<NavParentFalse>,
    pub _parent: SharedType<NavParentFalse>,
    pub _self: SharedType<Self>,
    child_size: RefCell<u8>,
    element_a: RefCell<OptRc<NavParentFalse_ParentA>>,
    element_b: RefCell<OptRc<NavParentFalse_ParentB>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for NavParentFalse {
    type Root = NavParentFalse;
    type Parent = NavParentFalse;

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
        let t = Self::read_into::<_, NavParentFalse_ParentA>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.element_a.borrow_mut() = t;
        let t = Self::read_into::<_, NavParentFalse_ParentB>(&*_io, Some(self_rc._root.clone()), None)?.into();
        *self_rc.element_b.borrow_mut() = t;
        Ok(())
    }
}
impl NavParentFalse {
}
impl NavParentFalse {
    pub fn child_size(&self) -> Ref<'_, u8> {
        self.child_size.borrow()
    }
}
impl NavParentFalse {
    pub fn element_a(&self) -> Ref<'_, OptRc<NavParentFalse_ParentA>> {
        self.element_a.borrow()
    }
}
impl NavParentFalse {
    pub fn element_b(&self) -> Ref<'_, OptRc<NavParentFalse_ParentB>> {
        self.element_b.borrow()
    }
}
impl NavParentFalse {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct NavParentFalse_Child {
    pub _root: SharedType<NavParentFalse>,
    pub _parent: SharedType<NavParentFalse_ParentA>,
    pub _self: SharedType<Self>,
    code: RefCell<u8>,
    more: RefCell<Vec<u8>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for NavParentFalse_Child {
    type Root = NavParentFalse;
    type Parent = NavParentFalse_ParentA;

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
        if ((*self_rc.code() as u8) == (73 as u8)) {
            *self_rc.more.borrow_mut() = _io.read_bytes(*_prc.as_ref().unwrap()._parent.get_value().borrow().upgrade().as_ref().unwrap().child_size() as usize)?.into();
        }
        Ok(())
    }
}
impl NavParentFalse_Child {
}
impl NavParentFalse_Child {
    pub fn code(&self) -> Ref<'_, u8> {
        self.code.borrow()
    }
}
impl NavParentFalse_Child {
    pub fn more(&self) -> Ref<'_, Vec<u8>> {
        self.more.borrow()
    }
}
impl NavParentFalse_Child {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct NavParentFalse_ParentA {
    pub _root: SharedType<NavParentFalse>,
    pub _parent: SharedType<NavParentFalse>,
    pub _self: SharedType<Self>,
    foo: RefCell<OptRc<NavParentFalse_Child>>,
    bar: RefCell<OptRc<NavParentFalse_ParentB>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for NavParentFalse_ParentA {
    type Root = NavParentFalse;
    type Parent = NavParentFalse;

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
        let t = Self::read_into::<_, NavParentFalse_Child>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.foo.borrow_mut() = t;
        let t = Self::read_into::<_, NavParentFalse_ParentB>(&*_io, Some(self_rc._root.clone()), None)?.into();
        *self_rc.bar.borrow_mut() = t;
        Ok(())
    }
}
impl NavParentFalse_ParentA {
}
impl NavParentFalse_ParentA {
    pub fn foo(&self) -> Ref<'_, OptRc<NavParentFalse_Child>> {
        self.foo.borrow()
    }
}
impl NavParentFalse_ParentA {
    pub fn bar(&self) -> Ref<'_, OptRc<NavParentFalse_ParentB>> {
        self.bar.borrow()
    }
}
impl NavParentFalse_ParentA {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct NavParentFalse_ParentB {
    pub _root: SharedType<NavParentFalse>,
    pub _parent: SharedType<KStructUnit>,
    pub _self: SharedType<Self>,
    foo: RefCell<OptRc<NavParentFalse_Child>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for NavParentFalse_ParentB {
    type Root = NavParentFalse;
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
        let t = Self::read_into::<_, NavParentFalse_Child>(&*_io, Some(self_rc._root.clone()), None)?.into();
        *self_rc.foo.borrow_mut() = t;
        Ok(())
    }
}
impl NavParentFalse_ParentB {
}
impl NavParentFalse_ParentB {
    pub fn foo(&self) -> Ref<'_, OptRc<NavParentFalse_Child>> {
        self.foo.borrow()
    }
}
impl NavParentFalse_ParentB {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
