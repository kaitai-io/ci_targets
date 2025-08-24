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
pub struct Enum1 {
    pub _root: SharedType<Enum1>,
    pub _parent: SharedType<Enum1>,
    pub _self: SharedType<Self>,
    main: RefCell<OptRc<Enum1_MainObj>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for Enum1 {
    type Root = Enum1;
    type Parent = Enum1;

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
        let t = Self::read_into::<_, Enum1_MainObj>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.main.borrow_mut() = t;
        Ok(())
    }
}
impl Enum1 {
}
impl Enum1 {
    pub fn main(&self) -> Ref<'_, OptRc<Enum1_MainObj>> {
        self.main.borrow()
    }
}
impl Enum1 {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct Enum1_MainObj {
    pub _root: SharedType<Enum1>,
    pub _parent: SharedType<Enum1>,
    pub _self: SharedType<Self>,
    submain: RefCell<OptRc<Enum1_MainObj_SubmainObj>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for Enum1_MainObj {
    type Root = Enum1;
    type Parent = Enum1;

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
        let t = Self::read_into::<_, Enum1_MainObj_SubmainObj>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.submain.borrow_mut() = t;
        Ok(())
    }
}
impl Enum1_MainObj {
}
impl Enum1_MainObj {
    pub fn submain(&self) -> Ref<'_, OptRc<Enum1_MainObj_SubmainObj>> {
        self.submain.borrow()
    }
}
impl Enum1_MainObj {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
#[derive(Debug, PartialEq, Clone)]
pub enum Enum1_MainObj_Animal {
    Dog,
    Cat,
    Chicken,
    Unknown(i64),
}

impl TryFrom<i64> for Enum1_MainObj_Animal {
    type Error = KError;
    fn try_from(flag: i64) -> KResult<Enum1_MainObj_Animal> {
        match flag {
            4 => Ok(Enum1_MainObj_Animal::Dog),
            7 => Ok(Enum1_MainObj_Animal::Cat),
            12 => Ok(Enum1_MainObj_Animal::Chicken),
            _ => Ok(Enum1_MainObj_Animal::Unknown(flag)),
        }
    }
}

impl From<&Enum1_MainObj_Animal> for i64 {
    fn from(v: &Enum1_MainObj_Animal) -> Self {
        match *v {
            Enum1_MainObj_Animal::Dog => 4,
            Enum1_MainObj_Animal::Cat => 7,
            Enum1_MainObj_Animal::Chicken => 12,
            Enum1_MainObj_Animal::Unknown(v) => v
        }
    }
}

impl Default for Enum1_MainObj_Animal {
    fn default() -> Self { Enum1_MainObj_Animal::Unknown(0) }
}


#[derive(Default, Debug, Clone)]
pub struct Enum1_MainObj_SubmainObj {
    pub _root: SharedType<Enum1>,
    pub _parent: SharedType<Enum1_MainObj>,
    pub _self: SharedType<Self>,
    pet_1: RefCell<Enum1_MainObj_Animal>,
    pet_2: RefCell<Enum1_MainObj_Animal>,
    _io: RefCell<BytesReader>,
}
impl KStruct for Enum1_MainObj_SubmainObj {
    type Root = Enum1;
    type Parent = Enum1_MainObj;

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
        *self_rc.pet_1.borrow_mut() = (_io.read_u4le()? as i64).try_into()?;
        *self_rc.pet_2.borrow_mut() = (_io.read_u4le()? as i64).try_into()?;
        Ok(())
    }
}
impl Enum1_MainObj_SubmainObj {
}
impl Enum1_MainObj_SubmainObj {
    pub fn pet_1(&self) -> Ref<'_, Enum1_MainObj_Animal> {
        self.pet_1.borrow()
    }
}
impl Enum1_MainObj_SubmainObj {
    pub fn pet_2(&self) -> Ref<'_, Enum1_MainObj_Animal> {
        self.pet_2.borrow()
    }
}
impl Enum1_MainObj_SubmainObj {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
