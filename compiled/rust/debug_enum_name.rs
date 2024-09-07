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
pub struct DebugEnumName {
    pub _root: SharedType<DebugEnumName>,
    pub _parent: SharedType<DebugEnumName>,
    pub _self: SharedType<Self>,
    one: RefCell<DebugEnumName_TestEnum1>,
    array_of_ints: RefCell<Vec<DebugEnumName_TestEnum2>>,
    test_type: RefCell<OptRc<DebugEnumName_TestSubtype>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for DebugEnumName {
    type Root = DebugEnumName;
    type Parent = DebugEnumName;

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
        *self_rc.one.borrow_mut() = (_io.read_u1()? as i64).try_into()?;
        *self_rc.array_of_ints.borrow_mut() = Vec::new();
        let l_array_of_ints = 1;
        for _i in 0..l_array_of_ints {
            self_rc.array_of_ints.borrow_mut().push((_io.read_u1()? as i64).try_into()?);
        }
        let t = Self::read_into::<_, DebugEnumName_TestSubtype>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.test_type.borrow_mut() = t;
        Ok(())
    }
}
impl DebugEnumName {
}
impl DebugEnumName {
    pub fn one(&self) -> Ref<DebugEnumName_TestEnum1> {
        self.one.borrow()
    }
}
impl DebugEnumName {
    pub fn array_of_ints(&self) -> Ref<Vec<DebugEnumName_TestEnum2>> {
        self.array_of_ints.borrow()
    }
}
impl DebugEnumName {
    pub fn test_type(&self) -> Ref<OptRc<DebugEnumName_TestSubtype>> {
        self.test_type.borrow()
    }
}
impl DebugEnumName {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
#[derive(Debug, PartialEq, Clone)]
pub enum DebugEnumName_TestEnum1 {
    EnumValue80,
    Unknown(i64),
}

impl TryFrom<i64> for DebugEnumName_TestEnum1 {
    type Error = KError;
    fn try_from(flag: i64) -> KResult<DebugEnumName_TestEnum1> {
        match flag {
            80 => Ok(DebugEnumName_TestEnum1::EnumValue80),
            _ => Ok(DebugEnumName_TestEnum1::Unknown(flag)),
        }
    }
}

impl From<&DebugEnumName_TestEnum1> for i64 {
    fn from(v: &DebugEnumName_TestEnum1) -> Self {
        match *v {
            DebugEnumName_TestEnum1::EnumValue80 => 80,
            DebugEnumName_TestEnum1::Unknown(v) => v
        }
    }
}

impl Default for DebugEnumName_TestEnum1 {
    fn default() -> Self { DebugEnumName_TestEnum1::Unknown(0) }
}

#[derive(Debug, PartialEq, Clone)]
pub enum DebugEnumName_TestEnum2 {
    EnumValue65,
    Unknown(i64),
}

impl TryFrom<i64> for DebugEnumName_TestEnum2 {
    type Error = KError;
    fn try_from(flag: i64) -> KResult<DebugEnumName_TestEnum2> {
        match flag {
            65 => Ok(DebugEnumName_TestEnum2::EnumValue65),
            _ => Ok(DebugEnumName_TestEnum2::Unknown(flag)),
        }
    }
}

impl From<&DebugEnumName_TestEnum2> for i64 {
    fn from(v: &DebugEnumName_TestEnum2) -> Self {
        match *v {
            DebugEnumName_TestEnum2::EnumValue65 => 65,
            DebugEnumName_TestEnum2::Unknown(v) => v
        }
    }
}

impl Default for DebugEnumName_TestEnum2 {
    fn default() -> Self { DebugEnumName_TestEnum2::Unknown(0) }
}


#[derive(Default, Debug, Clone)]
pub struct DebugEnumName_TestSubtype {
    pub _root: SharedType<DebugEnumName>,
    pub _parent: SharedType<DebugEnumName>,
    pub _self: SharedType<Self>,
    field1: RefCell<DebugEnumName_TestSubtype_InnerEnum1>,
    field2: RefCell<u8>,
    _io: RefCell<BytesReader>,
    f_instance_field: Cell<bool>,
    instance_field: RefCell<DebugEnumName_TestSubtype_InnerEnum2>,
}
impl KStruct for DebugEnumName_TestSubtype {
    type Root = DebugEnumName;
    type Parent = DebugEnumName;

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
        *self_rc.field1.borrow_mut() = (_io.read_u1()? as i64).try_into()?;
        *self_rc.field2.borrow_mut() = _io.read_u1()?.into();
        Ok(())
    }
}
impl DebugEnumName_TestSubtype {
    pub fn instance_field(
        &self
    ) -> KResult<Ref<DebugEnumName_TestSubtype_InnerEnum2>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_instance_field.get() {
            return Ok(self.instance_field.borrow());
        }
        self.f_instance_field.set(true);
        *self.instance_field.borrow_mut() = (((*self.field2() as u8) & (15 as u8)) as i64).try_into()?;
        Ok(self.instance_field.borrow())
    }
}
impl DebugEnumName_TestSubtype {
    pub fn field1(&self) -> Ref<DebugEnumName_TestSubtype_InnerEnum1> {
        self.field1.borrow()
    }
}
impl DebugEnumName_TestSubtype {
    pub fn field2(&self) -> Ref<u8> {
        self.field2.borrow()
    }
}
impl DebugEnumName_TestSubtype {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
#[derive(Debug, PartialEq, Clone)]
pub enum DebugEnumName_TestSubtype_InnerEnum1 {
    EnumValue67,
    Unknown(i64),
}

impl TryFrom<i64> for DebugEnumName_TestSubtype_InnerEnum1 {
    type Error = KError;
    fn try_from(flag: i64) -> KResult<DebugEnumName_TestSubtype_InnerEnum1> {
        match flag {
            67 => Ok(DebugEnumName_TestSubtype_InnerEnum1::EnumValue67),
            _ => Ok(DebugEnumName_TestSubtype_InnerEnum1::Unknown(flag)),
        }
    }
}

impl From<&DebugEnumName_TestSubtype_InnerEnum1> for i64 {
    fn from(v: &DebugEnumName_TestSubtype_InnerEnum1) -> Self {
        match *v {
            DebugEnumName_TestSubtype_InnerEnum1::EnumValue67 => 67,
            DebugEnumName_TestSubtype_InnerEnum1::Unknown(v) => v
        }
    }
}

impl Default for DebugEnumName_TestSubtype_InnerEnum1 {
    fn default() -> Self { DebugEnumName_TestSubtype_InnerEnum1::Unknown(0) }
}

#[derive(Debug, PartialEq, Clone)]
pub enum DebugEnumName_TestSubtype_InnerEnum2 {
    EnumValue11,
    Unknown(i64),
}

impl TryFrom<i64> for DebugEnumName_TestSubtype_InnerEnum2 {
    type Error = KError;
    fn try_from(flag: i64) -> KResult<DebugEnumName_TestSubtype_InnerEnum2> {
        match flag {
            11 => Ok(DebugEnumName_TestSubtype_InnerEnum2::EnumValue11),
            _ => Ok(DebugEnumName_TestSubtype_InnerEnum2::Unknown(flag)),
        }
    }
}

impl From<&DebugEnumName_TestSubtype_InnerEnum2> for i64 {
    fn from(v: &DebugEnumName_TestSubtype_InnerEnum2) -> Self {
        match *v {
            DebugEnumName_TestSubtype_InnerEnum2::EnumValue11 => 11,
            DebugEnumName_TestSubtype_InnerEnum2::Unknown(v) => v
        }
    }
}

impl Default for DebugEnumName_TestSubtype_InnerEnum2 {
    fn default() -> Self { DebugEnumName_TestSubtype_InnerEnum2::Unknown(0) }
}

