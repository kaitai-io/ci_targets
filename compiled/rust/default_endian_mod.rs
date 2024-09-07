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
pub struct DefaultEndianMod {
    pub _root: SharedType<DefaultEndianMod>,
    pub _parent: SharedType<DefaultEndianMod>,
    pub _self: SharedType<Self>,
    main: RefCell<OptRc<DefaultEndianMod_MainObj>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for DefaultEndianMod {
    type Root = DefaultEndianMod;
    type Parent = DefaultEndianMod;

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
        let t = Self::read_into::<_, DefaultEndianMod_MainObj>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.main.borrow_mut() = t;
        Ok(())
    }
}
impl DefaultEndianMod {
}
impl DefaultEndianMod {
    pub fn main(&self) -> Ref<OptRc<DefaultEndianMod_MainObj>> {
        self.main.borrow()
    }
}
impl DefaultEndianMod {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct DefaultEndianMod_MainObj {
    pub _root: SharedType<DefaultEndianMod>,
    pub _parent: SharedType<DefaultEndianMod>,
    pub _self: SharedType<Self>,
    one: RefCell<i32>,
    nest: RefCell<OptRc<DefaultEndianMod_MainObj_Subnest>>,
    nest_be: RefCell<OptRc<DefaultEndianMod_MainObj_SubnestBe>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for DefaultEndianMod_MainObj {
    type Root = DefaultEndianMod;
    type Parent = DefaultEndianMod;

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
        *self_rc.one.borrow_mut() = _io.read_s4le()?.into();
        let t = Self::read_into::<_, DefaultEndianMod_MainObj_Subnest>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.nest.borrow_mut() = t;
        let t = Self::read_into::<_, DefaultEndianMod_MainObj_SubnestBe>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.nest_be.borrow_mut() = t;
        Ok(())
    }
}
impl DefaultEndianMod_MainObj {
}
impl DefaultEndianMod_MainObj {
    pub fn one(&self) -> Ref<i32> {
        self.one.borrow()
    }
}
impl DefaultEndianMod_MainObj {
    pub fn nest(&self) -> Ref<OptRc<DefaultEndianMod_MainObj_Subnest>> {
        self.nest.borrow()
    }
}
impl DefaultEndianMod_MainObj {
    pub fn nest_be(&self) -> Ref<OptRc<DefaultEndianMod_MainObj_SubnestBe>> {
        self.nest_be.borrow()
    }
}
impl DefaultEndianMod_MainObj {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct DefaultEndianMod_MainObj_Subnest {
    pub _root: SharedType<DefaultEndianMod>,
    pub _parent: SharedType<DefaultEndianMod_MainObj>,
    pub _self: SharedType<Self>,
    two: RefCell<i32>,
    _io: RefCell<BytesReader>,
}
impl KStruct for DefaultEndianMod_MainObj_Subnest {
    type Root = DefaultEndianMod;
    type Parent = DefaultEndianMod_MainObj;

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
        *self_rc.two.borrow_mut() = _io.read_s4le()?.into();
        Ok(())
    }
}
impl DefaultEndianMod_MainObj_Subnest {
}
impl DefaultEndianMod_MainObj_Subnest {
    pub fn two(&self) -> Ref<i32> {
        self.two.borrow()
    }
}
impl DefaultEndianMod_MainObj_Subnest {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct DefaultEndianMod_MainObj_SubnestBe {
    pub _root: SharedType<DefaultEndianMod>,
    pub _parent: SharedType<DefaultEndianMod_MainObj>,
    pub _self: SharedType<Self>,
    two: RefCell<i32>,
    _io: RefCell<BytesReader>,
}
impl KStruct for DefaultEndianMod_MainObj_SubnestBe {
    type Root = DefaultEndianMod;
    type Parent = DefaultEndianMod_MainObj;

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
        *self_rc.two.borrow_mut() = _io.read_s4be()?.into();
        Ok(())
    }
}
impl DefaultEndianMod_MainObj_SubnestBe {
}
impl DefaultEndianMod_MainObj_SubnestBe {
    pub fn two(&self) -> Ref<i32> {
        self.two.borrow()
    }
}
impl DefaultEndianMod_MainObj_SubnestBe {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
