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
pub struct NestedTypes {
    pub _root: SharedType<NestedTypes>,
    pub _parent: SharedType<NestedTypes>,
    pub _self: SharedType<Self>,
    one: RefCell<OptRc<NestedTypes_SubtypeA>>,
    two: RefCell<OptRc<NestedTypes_SubtypeB>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for NestedTypes {
    type Root = NestedTypes;
    type Parent = NestedTypes;

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
        let t = Self::read_into::<_, NestedTypes_SubtypeA>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.one.borrow_mut() = t;
        let t = Self::read_into::<_, NestedTypes_SubtypeB>(&*_io, Some(self_rc._root.clone()), None)?.into();
        *self_rc.two.borrow_mut() = t;
        Ok(())
    }
}
impl NestedTypes {
}
impl NestedTypes {
    pub fn one(&self) -> Ref<OptRc<NestedTypes_SubtypeA>> {
        self.one.borrow()
    }
}
impl NestedTypes {
    pub fn two(&self) -> Ref<OptRc<NestedTypes_SubtypeB>> {
        self.two.borrow()
    }
}
impl NestedTypes {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct NestedTypes_SubtypeA {
    pub _root: SharedType<NestedTypes>,
    pub _parent: SharedType<NestedTypes>,
    pub _self: SharedType<Self>,
    typed_at_root: RefCell<OptRc<NestedTypes_SubtypeB>>,
    typed_here: RefCell<OptRc<NestedTypes_SubtypeA_SubtypeC>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for NestedTypes_SubtypeA {
    type Root = NestedTypes;
    type Parent = NestedTypes;

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
        let t = Self::read_into::<_, NestedTypes_SubtypeB>(&*_io, Some(self_rc._root.clone()), None)?.into();
        *self_rc.typed_at_root.borrow_mut() = t;
        let t = Self::read_into::<_, NestedTypes_SubtypeA_SubtypeC>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.typed_here.borrow_mut() = t;
        Ok(())
    }
}
impl NestedTypes_SubtypeA {
}
impl NestedTypes_SubtypeA {
    pub fn typed_at_root(&self) -> Ref<OptRc<NestedTypes_SubtypeB>> {
        self.typed_at_root.borrow()
    }
}
impl NestedTypes_SubtypeA {
    pub fn typed_here(&self) -> Ref<OptRc<NestedTypes_SubtypeA_SubtypeC>> {
        self.typed_here.borrow()
    }
}
impl NestedTypes_SubtypeA {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct NestedTypes_SubtypeA_SubtypeC {
    pub _root: SharedType<NestedTypes>,
    pub _parent: SharedType<NestedTypes_SubtypeA>,
    pub _self: SharedType<Self>,
    value_c: RefCell<i8>,
    _io: RefCell<BytesReader>,
}
impl KStruct for NestedTypes_SubtypeA_SubtypeC {
    type Root = NestedTypes;
    type Parent = NestedTypes_SubtypeA;

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
        *self_rc.value_c.borrow_mut() = _io.read_s1()?.into();
        Ok(())
    }
}
impl NestedTypes_SubtypeA_SubtypeC {
}
impl NestedTypes_SubtypeA_SubtypeC {
    pub fn value_c(&self) -> Ref<i8> {
        self.value_c.borrow()
    }
}
impl NestedTypes_SubtypeA_SubtypeC {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct NestedTypes_SubtypeB {
    pub _root: SharedType<NestedTypes>,
    pub _parent: SharedType<KStructUnit>,
    pub _self: SharedType<Self>,
    value_b: RefCell<i8>,
    _io: RefCell<BytesReader>,
}
impl KStruct for NestedTypes_SubtypeB {
    type Root = NestedTypes;
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
        *self_rc.value_b.borrow_mut() = _io.read_s1()?.into();
        Ok(())
    }
}
impl NestedTypes_SubtypeB {
}
impl NestedTypes_SubtypeB {
    pub fn value_b(&self) -> Ref<i8> {
        self.value_b.borrow()
    }
}
impl NestedTypes_SubtypeB {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
