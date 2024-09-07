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
use super::opaque_external_type_02_child::OpaqueExternalType02Child;

#[derive(Default, Debug, Clone)]
pub struct OpaqueExternalType02Parent {
    pub _root: SharedType<OpaqueExternalType02Parent>,
    pub _parent: SharedType<OpaqueExternalType02Parent>,
    pub _self: SharedType<Self>,
    parent: RefCell<OptRc<OpaqueExternalType02Parent_ParentObj>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for OpaqueExternalType02Parent {
    type Root = OpaqueExternalType02Parent;
    type Parent = OpaqueExternalType02Parent;

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
        let t = Self::read_into::<_, OpaqueExternalType02Parent_ParentObj>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.parent.borrow_mut() = t;
        Ok(())
    }
}
impl OpaqueExternalType02Parent {
}
impl OpaqueExternalType02Parent {
    pub fn parent(&self) -> Ref<OptRc<OpaqueExternalType02Parent_ParentObj>> {
        self.parent.borrow()
    }
}
impl OpaqueExternalType02Parent {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct OpaqueExternalType02Parent_ParentObj {
    pub _root: SharedType<OpaqueExternalType02Parent>,
    pub _parent: SharedType<OpaqueExternalType02Parent>,
    pub _self: SharedType<Self>,
    child: RefCell<OptRc<OpaqueExternalType02Child>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for OpaqueExternalType02Parent_ParentObj {
    type Root = OpaqueExternalType02Parent;
    type Parent = OpaqueExternalType02Parent;

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
        let t = Self::read_into::<_, OpaqueExternalType02Child>(&*_io, None, None)?.into();
        *self_rc.child.borrow_mut() = t;
        Ok(())
    }
}
impl OpaqueExternalType02Parent_ParentObj {
}
impl OpaqueExternalType02Parent_ParentObj {
    pub fn child(&self) -> Ref<OptRc<OpaqueExternalType02Child>> {
        self.child.borrow()
    }
}
impl OpaqueExternalType02Parent_ParentObj {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
