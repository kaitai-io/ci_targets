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
pub struct NestedTypes2 {
    pub _root: SharedType<NestedTypes2>,
    pub _parent: SharedType<NestedTypes2>,
    pub _self: SharedType<Self>,
    one: RefCell<OptRc<NestedTypes2_SubtypeA>>,
    two: RefCell<OptRc<NestedTypes2_SubtypeB>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for NestedTypes2 {
    type Root = NestedTypes2;
    type Parent = NestedTypes2;

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
        let t = Self::read_into::<_, NestedTypes2_SubtypeA>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.one.borrow_mut() = t;
        let t = Self::read_into::<_, NestedTypes2_SubtypeB>(&*_io, Some(self_rc._root.clone()), None)?.into();
        *self_rc.two.borrow_mut() = t;
        Ok(())
    }
}
impl NestedTypes2 {
}
impl NestedTypes2 {
    pub fn one(&self) -> Ref<'_, OptRc<NestedTypes2_SubtypeA>> {
        self.one.borrow()
    }
}
impl NestedTypes2 {
    pub fn two(&self) -> Ref<'_, OptRc<NestedTypes2_SubtypeB>> {
        self.two.borrow()
    }
}
impl NestedTypes2 {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct NestedTypes2_SubtypeA {
    pub _root: SharedType<NestedTypes2>,
    pub _parent: SharedType<NestedTypes2>,
    pub _self: SharedType<Self>,
    typed_at_root: RefCell<OptRc<NestedTypes2_SubtypeB>>,
    typed_here1: RefCell<OptRc<NestedTypes2_SubtypeA_SubtypeC>>,
    typed_here2: RefCell<OptRc<NestedTypes2_SubtypeA_SubtypeCc>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for NestedTypes2_SubtypeA {
    type Root = NestedTypes2;
    type Parent = NestedTypes2;

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
        let t = Self::read_into::<_, NestedTypes2_SubtypeB>(&*_io, Some(self_rc._root.clone()), None)?.into();
        *self_rc.typed_at_root.borrow_mut() = t;
        let t = Self::read_into::<_, NestedTypes2_SubtypeA_SubtypeC>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.typed_here1.borrow_mut() = t;
        let t = Self::read_into::<_, NestedTypes2_SubtypeA_SubtypeCc>(&*_io, Some(self_rc._root.clone()), None)?.into();
        *self_rc.typed_here2.borrow_mut() = t;
        Ok(())
    }
}
impl NestedTypes2_SubtypeA {
}
impl NestedTypes2_SubtypeA {
    pub fn typed_at_root(&self) -> Ref<'_, OptRc<NestedTypes2_SubtypeB>> {
        self.typed_at_root.borrow()
    }
}
impl NestedTypes2_SubtypeA {
    pub fn typed_here1(&self) -> Ref<'_, OptRc<NestedTypes2_SubtypeA_SubtypeC>> {
        self.typed_here1.borrow()
    }
}
impl NestedTypes2_SubtypeA {
    pub fn typed_here2(&self) -> Ref<'_, OptRc<NestedTypes2_SubtypeA_SubtypeCc>> {
        self.typed_here2.borrow()
    }
}
impl NestedTypes2_SubtypeA {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct NestedTypes2_SubtypeA_SubtypeC {
    pub _root: SharedType<NestedTypes2>,
    pub _parent: SharedType<NestedTypes2_SubtypeA>,
    pub _self: SharedType<Self>,
    value_c: RefCell<i8>,
    typed_here: RefCell<OptRc<NestedTypes2_SubtypeA_SubtypeC_SubtypeD>>,
    typed_parent: RefCell<OptRc<NestedTypes2_SubtypeA_SubtypeCc>>,
    typed_root: RefCell<OptRc<NestedTypes2_SubtypeB>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for NestedTypes2_SubtypeA_SubtypeC {
    type Root = NestedTypes2;
    type Parent = NestedTypes2_SubtypeA;

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
        let t = Self::read_into::<_, NestedTypes2_SubtypeA_SubtypeC_SubtypeD>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.typed_here.borrow_mut() = t;
        let t = Self::read_into::<_, NestedTypes2_SubtypeA_SubtypeCc>(&*_io, Some(self_rc._root.clone()), None)?.into();
        *self_rc.typed_parent.borrow_mut() = t;
        let t = Self::read_into::<_, NestedTypes2_SubtypeB>(&*_io, Some(self_rc._root.clone()), None)?.into();
        *self_rc.typed_root.borrow_mut() = t;
        Ok(())
    }
}
impl NestedTypes2_SubtypeA_SubtypeC {
}
impl NestedTypes2_SubtypeA_SubtypeC {
    pub fn value_c(&self) -> Ref<'_, i8> {
        self.value_c.borrow()
    }
}
impl NestedTypes2_SubtypeA_SubtypeC {
    pub fn typed_here(&self) -> Ref<'_, OptRc<NestedTypes2_SubtypeA_SubtypeC_SubtypeD>> {
        self.typed_here.borrow()
    }
}
impl NestedTypes2_SubtypeA_SubtypeC {
    pub fn typed_parent(&self) -> Ref<'_, OptRc<NestedTypes2_SubtypeA_SubtypeCc>> {
        self.typed_parent.borrow()
    }
}
impl NestedTypes2_SubtypeA_SubtypeC {
    pub fn typed_root(&self) -> Ref<'_, OptRc<NestedTypes2_SubtypeB>> {
        self.typed_root.borrow()
    }
}
impl NestedTypes2_SubtypeA_SubtypeC {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct NestedTypes2_SubtypeA_SubtypeC_SubtypeD {
    pub _root: SharedType<NestedTypes2>,
    pub _parent: SharedType<NestedTypes2_SubtypeA_SubtypeC>,
    pub _self: SharedType<Self>,
    value_d: RefCell<i8>,
    _io: RefCell<BytesReader>,
}
impl KStruct for NestedTypes2_SubtypeA_SubtypeC_SubtypeD {
    type Root = NestedTypes2;
    type Parent = NestedTypes2_SubtypeA_SubtypeC;

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
        *self_rc.value_d.borrow_mut() = _io.read_s1()?.into();
        Ok(())
    }
}
impl NestedTypes2_SubtypeA_SubtypeC_SubtypeD {
}
impl NestedTypes2_SubtypeA_SubtypeC_SubtypeD {
    pub fn value_d(&self) -> Ref<'_, i8> {
        self.value_d.borrow()
    }
}
impl NestedTypes2_SubtypeA_SubtypeC_SubtypeD {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct NestedTypes2_SubtypeA_SubtypeCc {
    pub _root: SharedType<NestedTypes2>,
    pub _parent: SharedType<KStructUnit>,
    pub _self: SharedType<Self>,
    value_cc: RefCell<i8>,
    _io: RefCell<BytesReader>,
}
impl KStruct for NestedTypes2_SubtypeA_SubtypeCc {
    type Root = NestedTypes2;
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
        *self_rc.value_cc.borrow_mut() = _io.read_s1()?.into();
        Ok(())
    }
}
impl NestedTypes2_SubtypeA_SubtypeCc {
}
impl NestedTypes2_SubtypeA_SubtypeCc {
    pub fn value_cc(&self) -> Ref<'_, i8> {
        self.value_cc.borrow()
    }
}
impl NestedTypes2_SubtypeA_SubtypeCc {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct NestedTypes2_SubtypeB {
    pub _root: SharedType<NestedTypes2>,
    pub _parent: SharedType<KStructUnit>,
    pub _self: SharedType<Self>,
    value_b: RefCell<i8>,
    _io: RefCell<BytesReader>,
}
impl KStruct for NestedTypes2_SubtypeB {
    type Root = NestedTypes2;
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
impl NestedTypes2_SubtypeB {
}
impl NestedTypes2_SubtypeB {
    pub fn value_b(&self) -> Ref<'_, i8> {
        self.value_b.borrow()
    }
}
impl NestedTypes2_SubtypeB {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
