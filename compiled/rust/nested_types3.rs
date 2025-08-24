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
pub struct NestedTypes3 {
    pub _root: SharedType<NestedTypes3>,
    pub _parent: SharedType<NestedTypes3>,
    pub _self: SharedType<Self>,
    a_cc: RefCell<OptRc<NestedTypes3_SubtypeA_SubtypeCc>>,
    a_c_d: RefCell<OptRc<NestedTypes3_SubtypeA_SubtypeC_SubtypeD>>,
    b: RefCell<OptRc<NestedTypes3_SubtypeB>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for NestedTypes3 {
    type Root = NestedTypes3;
    type Parent = NestedTypes3;

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
        let t = Self::read_into::<_, NestedTypes3_SubtypeA_SubtypeCc>(&*_io, Some(self_rc._root.clone()), None)?.into();
        *self_rc.a_cc.borrow_mut() = t;
        let t = Self::read_into::<_, NestedTypes3_SubtypeA_SubtypeC_SubtypeD>(&*_io, Some(self_rc._root.clone()), None)?.into();
        *self_rc.a_c_d.borrow_mut() = t;
        let t = Self::read_into::<_, NestedTypes3_SubtypeB>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.b.borrow_mut() = t;
        Ok(())
    }
}
impl NestedTypes3 {
}
impl NestedTypes3 {
    pub fn a_cc(&self) -> Ref<'_, OptRc<NestedTypes3_SubtypeA_SubtypeCc>> {
        self.a_cc.borrow()
    }
}
impl NestedTypes3 {
    pub fn a_c_d(&self) -> Ref<'_, OptRc<NestedTypes3_SubtypeA_SubtypeC_SubtypeD>> {
        self.a_c_d.borrow()
    }
}
impl NestedTypes3 {
    pub fn b(&self) -> Ref<'_, OptRc<NestedTypes3_SubtypeB>> {
        self.b.borrow()
    }
}
impl NestedTypes3 {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct NestedTypes3_SubtypeA {
    pub _root: SharedType<NestedTypes3>,
    pub _parent: SharedType<KStructUnit>,
    pub _self: SharedType<Self>,
    _io: RefCell<BytesReader>,
}
impl KStruct for NestedTypes3_SubtypeA {
    type Root = NestedTypes3;
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
        Ok(())
    }
}
impl NestedTypes3_SubtypeA {
}
impl NestedTypes3_SubtypeA {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct NestedTypes3_SubtypeA_SubtypeC {
    pub _root: SharedType<NestedTypes3>,
    pub _parent: SharedType<KStructUnit>,
    pub _self: SharedType<Self>,
    _io: RefCell<BytesReader>,
}
impl KStruct for NestedTypes3_SubtypeA_SubtypeC {
    type Root = NestedTypes3;
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
        Ok(())
    }
}
impl NestedTypes3_SubtypeA_SubtypeC {
}
impl NestedTypes3_SubtypeA_SubtypeC {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct NestedTypes3_SubtypeA_SubtypeC_SubtypeD {
    pub _root: SharedType<NestedTypes3>,
    pub _parent: SharedType<KStructUnit>,
    pub _self: SharedType<Self>,
    value_d: RefCell<i8>,
    _io: RefCell<BytesReader>,
}
impl KStruct for NestedTypes3_SubtypeA_SubtypeC_SubtypeD {
    type Root = NestedTypes3;
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
        *self_rc.value_d.borrow_mut() = _io.read_s1()?.into();
        Ok(())
    }
}
impl NestedTypes3_SubtypeA_SubtypeC_SubtypeD {
}
impl NestedTypes3_SubtypeA_SubtypeC_SubtypeD {
    pub fn value_d(&self) -> Ref<'_, i8> {
        self.value_d.borrow()
    }
}
impl NestedTypes3_SubtypeA_SubtypeC_SubtypeD {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct NestedTypes3_SubtypeA_SubtypeCc {
    pub _root: SharedType<NestedTypes3>,
    pub _parent: SharedType<KStructUnit>,
    pub _self: SharedType<Self>,
    value_cc: RefCell<i8>,
    _io: RefCell<BytesReader>,
}
impl KStruct for NestedTypes3_SubtypeA_SubtypeCc {
    type Root = NestedTypes3;
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
impl NestedTypes3_SubtypeA_SubtypeCc {
}
impl NestedTypes3_SubtypeA_SubtypeCc {
    pub fn value_cc(&self) -> Ref<'_, i8> {
        self.value_cc.borrow()
    }
}
impl NestedTypes3_SubtypeA_SubtypeCc {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct NestedTypes3_SubtypeB {
    pub _root: SharedType<NestedTypes3>,
    pub _parent: SharedType<NestedTypes3>,
    pub _self: SharedType<Self>,
    value_b: RefCell<i8>,
    a_cc: RefCell<OptRc<NestedTypes3_SubtypeA_SubtypeCc>>,
    a_c_d: RefCell<OptRc<NestedTypes3_SubtypeA_SubtypeC_SubtypeD>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for NestedTypes3_SubtypeB {
    type Root = NestedTypes3;
    type Parent = NestedTypes3;

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
        let t = Self::read_into::<_, NestedTypes3_SubtypeA_SubtypeCc>(&*_io, Some(self_rc._root.clone()), None)?.into();
        *self_rc.a_cc.borrow_mut() = t;
        let t = Self::read_into::<_, NestedTypes3_SubtypeA_SubtypeC_SubtypeD>(&*_io, Some(self_rc._root.clone()), None)?.into();
        *self_rc.a_c_d.borrow_mut() = t;
        Ok(())
    }
}
impl NestedTypes3_SubtypeB {
}
impl NestedTypes3_SubtypeB {
    pub fn value_b(&self) -> Ref<'_, i8> {
        self.value_b.borrow()
    }
}
impl NestedTypes3_SubtypeB {
    pub fn a_cc(&self) -> Ref<'_, OptRc<NestedTypes3_SubtypeA_SubtypeCc>> {
        self.a_cc.borrow()
    }
}
impl NestedTypes3_SubtypeB {
    pub fn a_c_d(&self) -> Ref<'_, OptRc<NestedTypes3_SubtypeA_SubtypeC_SubtypeD>> {
        self.a_c_d.borrow()
    }
}
impl NestedTypes3_SubtypeB {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
