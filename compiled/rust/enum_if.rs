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
pub struct EnumIf {
    pub _root: SharedType<EnumIf>,
    pub _parent: SharedType<EnumIf>,
    pub _self: SharedType<Self>,
    op1: RefCell<OptRc<EnumIf_Operation>>,
    op2: RefCell<OptRc<EnumIf_Operation>>,
    op3: RefCell<OptRc<EnumIf_Operation>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for EnumIf {
    type Root = EnumIf;
    type Parent = EnumIf;

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
        let t = Self::read_into::<_, EnumIf_Operation>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.op1.borrow_mut() = t;
        let t = Self::read_into::<_, EnumIf_Operation>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.op2.borrow_mut() = t;
        let t = Self::read_into::<_, EnumIf_Operation>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.op3.borrow_mut() = t;
        Ok(())
    }
}
impl EnumIf {
}
impl EnumIf {
    pub fn op1(&self) -> Ref<'_, OptRc<EnumIf_Operation>> {
        self.op1.borrow()
    }
}
impl EnumIf {
    pub fn op2(&self) -> Ref<'_, OptRc<EnumIf_Operation>> {
        self.op2.borrow()
    }
}
impl EnumIf {
    pub fn op3(&self) -> Ref<'_, OptRc<EnumIf_Operation>> {
        self.op3.borrow()
    }
}
impl EnumIf {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
#[derive(Debug, PartialEq, Clone)]
pub enum EnumIf_Opcodes {
    AString,
    ATuple,
    Unknown(i64),
}

impl TryFrom<i64> for EnumIf_Opcodes {
    type Error = KError;
    fn try_from(flag: i64) -> KResult<EnumIf_Opcodes> {
        match flag {
            83 => Ok(EnumIf_Opcodes::AString),
            84 => Ok(EnumIf_Opcodes::ATuple),
            _ => Ok(EnumIf_Opcodes::Unknown(flag)),
        }
    }
}

impl From<&EnumIf_Opcodes> for i64 {
    fn from(v: &EnumIf_Opcodes) -> Self {
        match *v {
            EnumIf_Opcodes::AString => 83,
            EnumIf_Opcodes::ATuple => 84,
            EnumIf_Opcodes::Unknown(v) => v
        }
    }
}

impl Default for EnumIf_Opcodes {
    fn default() -> Self { EnumIf_Opcodes::Unknown(0) }
}


#[derive(Default, Debug, Clone)]
pub struct EnumIf_ArgStr {
    pub _root: SharedType<EnumIf>,
    pub _parent: SharedType<EnumIf_Operation>,
    pub _self: SharedType<Self>,
    len: RefCell<u8>,
    str: RefCell<String>,
    _io: RefCell<BytesReader>,
}
impl KStruct for EnumIf_ArgStr {
    type Root = EnumIf;
    type Parent = EnumIf_Operation;

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
        *self_rc.len.borrow_mut() = _io.read_u1()?.into();
        *self_rc.str.borrow_mut() = bytes_to_str(&_io.read_bytes(*self_rc.len() as usize)?.into(), "UTF-8")?;
        Ok(())
    }
}
impl EnumIf_ArgStr {
}
impl EnumIf_ArgStr {
    pub fn len(&self) -> Ref<'_, u8> {
        self.len.borrow()
    }
}
impl EnumIf_ArgStr {
    pub fn str(&self) -> Ref<'_, String> {
        self.str.borrow()
    }
}
impl EnumIf_ArgStr {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct EnumIf_ArgTuple {
    pub _root: SharedType<EnumIf>,
    pub _parent: SharedType<EnumIf_Operation>,
    pub _self: SharedType<Self>,
    num1: RefCell<u8>,
    num2: RefCell<u8>,
    _io: RefCell<BytesReader>,
}
impl KStruct for EnumIf_ArgTuple {
    type Root = EnumIf;
    type Parent = EnumIf_Operation;

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
        *self_rc.num1.borrow_mut() = _io.read_u1()?.into();
        *self_rc.num2.borrow_mut() = _io.read_u1()?.into();
        Ok(())
    }
}
impl EnumIf_ArgTuple {
}
impl EnumIf_ArgTuple {
    pub fn num1(&self) -> Ref<'_, u8> {
        self.num1.borrow()
    }
}
impl EnumIf_ArgTuple {
    pub fn num2(&self) -> Ref<'_, u8> {
        self.num2.borrow()
    }
}
impl EnumIf_ArgTuple {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct EnumIf_Operation {
    pub _root: SharedType<EnumIf>,
    pub _parent: SharedType<EnumIf>,
    pub _self: SharedType<Self>,
    opcode: RefCell<EnumIf_Opcodes>,
    arg_tuple: RefCell<OptRc<EnumIf_ArgTuple>>,
    arg_str: RefCell<OptRc<EnumIf_ArgStr>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for EnumIf_Operation {
    type Root = EnumIf;
    type Parent = EnumIf;

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
        *self_rc.opcode.borrow_mut() = (_io.read_u1()? as i64).try_into()?;
        if *self_rc.opcode() == EnumIf_Opcodes::ATuple {
            let t = Self::read_into::<_, EnumIf_ArgTuple>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
            *self_rc.arg_tuple.borrow_mut() = t;
        }
        if *self_rc.opcode() == EnumIf_Opcodes::AString {
            let t = Self::read_into::<_, EnumIf_ArgStr>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
            *self_rc.arg_str.borrow_mut() = t;
        }
        Ok(())
    }
}
impl EnumIf_Operation {
}
impl EnumIf_Operation {
    pub fn opcode(&self) -> Ref<'_, EnumIf_Opcodes> {
        self.opcode.borrow()
    }
}
impl EnumIf_Operation {
    pub fn arg_tuple(&self) -> Ref<'_, OptRc<EnumIf_ArgTuple>> {
        self.arg_tuple.borrow()
    }
}
impl EnumIf_Operation {
    pub fn arg_str(&self) -> Ref<'_, OptRc<EnumIf_ArgStr>> {
        self.arg_str.borrow()
    }
}
impl EnumIf_Operation {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
