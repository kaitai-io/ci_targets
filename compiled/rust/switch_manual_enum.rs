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
pub struct SwitchManualEnum {
    pub _root: SharedType<SwitchManualEnum>,
    pub _parent: SharedType<SwitchManualEnum>,
    pub _self: SharedType<Self>,
    opcodes: RefCell<Vec<OptRc<SwitchManualEnum_Opcode>>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for SwitchManualEnum {
    type Root = SwitchManualEnum;
    type Parent = SwitchManualEnum;

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
        *self_rc.opcodes.borrow_mut() = Vec::new();
        {
            let mut _i = 0;
            while !_io.is_eof() {
                let t = Self::read_into::<_, SwitchManualEnum_Opcode>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                self_rc.opcodes.borrow_mut().push(t);
                _i += 1;
            }
        }
        Ok(())
    }
}
impl SwitchManualEnum {
}
impl SwitchManualEnum {
    pub fn opcodes(&self) -> Ref<Vec<OptRc<SwitchManualEnum_Opcode>>> {
        self.opcodes.borrow()
    }
}
impl SwitchManualEnum {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct SwitchManualEnum_Opcode {
    pub _root: SharedType<SwitchManualEnum>,
    pub _parent: SharedType<SwitchManualEnum>,
    pub _self: SharedType<Self>,
    code: RefCell<SwitchManualEnum_Opcode_CodeEnum>,
    body: RefCell<Option<SwitchManualEnum_Opcode_Body>>,
    _io: RefCell<BytesReader>,
}
#[derive(Debug, Clone)]
pub enum SwitchManualEnum_Opcode_Body {
    SwitchManualEnum_Opcode_Intval(OptRc<SwitchManualEnum_Opcode_Intval>),
    SwitchManualEnum_Opcode_Strval(OptRc<SwitchManualEnum_Opcode_Strval>),
}
impl From<&SwitchManualEnum_Opcode_Body> for OptRc<SwitchManualEnum_Opcode_Intval> {
    fn from(v: &SwitchManualEnum_Opcode_Body) -> Self {
        if let SwitchManualEnum_Opcode_Body::SwitchManualEnum_Opcode_Intval(x) = v {
            return x.clone();
        }
        panic!("expected SwitchManualEnum_Opcode_Body::SwitchManualEnum_Opcode_Intval, got {:?}", v)
    }
}
impl From<OptRc<SwitchManualEnum_Opcode_Intval>> for SwitchManualEnum_Opcode_Body {
    fn from(v: OptRc<SwitchManualEnum_Opcode_Intval>) -> Self {
        Self::SwitchManualEnum_Opcode_Intval(v)
    }
}
impl From<&SwitchManualEnum_Opcode_Body> for OptRc<SwitchManualEnum_Opcode_Strval> {
    fn from(v: &SwitchManualEnum_Opcode_Body) -> Self {
        if let SwitchManualEnum_Opcode_Body::SwitchManualEnum_Opcode_Strval(x) = v {
            return x.clone();
        }
        panic!("expected SwitchManualEnum_Opcode_Body::SwitchManualEnum_Opcode_Strval, got {:?}", v)
    }
}
impl From<OptRc<SwitchManualEnum_Opcode_Strval>> for SwitchManualEnum_Opcode_Body {
    fn from(v: OptRc<SwitchManualEnum_Opcode_Strval>) -> Self {
        Self::SwitchManualEnum_Opcode_Strval(v)
    }
}
impl KStruct for SwitchManualEnum_Opcode {
    type Root = SwitchManualEnum;
    type Parent = SwitchManualEnum;

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
        *self_rc.code.borrow_mut() = (_io.read_u1()? as i64).try_into()?;
        match *self_rc.code() {
            SwitchManualEnum_Opcode_CodeEnum::Intval => {
                let t = Self::read_into::<_, SwitchManualEnum_Opcode_Intval>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                *self_rc.body.borrow_mut() = Some(t);
            }
            SwitchManualEnum_Opcode_CodeEnum::Strval => {
                let t = Self::read_into::<_, SwitchManualEnum_Opcode_Strval>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                *self_rc.body.borrow_mut() = Some(t);
            }
            _ => {}
        }
        Ok(())
    }
}
impl SwitchManualEnum_Opcode {
}
impl SwitchManualEnum_Opcode {
    pub fn code(&self) -> Ref<SwitchManualEnum_Opcode_CodeEnum> {
        self.code.borrow()
    }
}
impl SwitchManualEnum_Opcode {
    pub fn body(&self) -> Ref<Option<SwitchManualEnum_Opcode_Body>> {
        self.body.borrow()
    }
}
impl SwitchManualEnum_Opcode {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
#[derive(Debug, PartialEq, Clone)]
pub enum SwitchManualEnum_Opcode_CodeEnum {
    Intval,
    Strval,
    Unknown(i64),
}

impl TryFrom<i64> for SwitchManualEnum_Opcode_CodeEnum {
    type Error = KError;
    fn try_from(flag: i64) -> KResult<SwitchManualEnum_Opcode_CodeEnum> {
        match flag {
            73 => Ok(SwitchManualEnum_Opcode_CodeEnum::Intval),
            83 => Ok(SwitchManualEnum_Opcode_CodeEnum::Strval),
            _ => Ok(SwitchManualEnum_Opcode_CodeEnum::Unknown(flag)),
        }
    }
}

impl From<&SwitchManualEnum_Opcode_CodeEnum> for i64 {
    fn from(v: &SwitchManualEnum_Opcode_CodeEnum) -> Self {
        match *v {
            SwitchManualEnum_Opcode_CodeEnum::Intval => 73,
            SwitchManualEnum_Opcode_CodeEnum::Strval => 83,
            SwitchManualEnum_Opcode_CodeEnum::Unknown(v) => v
        }
    }
}

impl Default for SwitchManualEnum_Opcode_CodeEnum {
    fn default() -> Self { SwitchManualEnum_Opcode_CodeEnum::Unknown(0) }
}


#[derive(Default, Debug, Clone)]
pub struct SwitchManualEnum_Opcode_Intval {
    pub _root: SharedType<SwitchManualEnum>,
    pub _parent: SharedType<SwitchManualEnum_Opcode>,
    pub _self: SharedType<Self>,
    value: RefCell<u8>,
    _io: RefCell<BytesReader>,
}
impl KStruct for SwitchManualEnum_Opcode_Intval {
    type Root = SwitchManualEnum;
    type Parent = SwitchManualEnum_Opcode;

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
        *self_rc.value.borrow_mut() = _io.read_u1()?.into();
        Ok(())
    }
}
impl SwitchManualEnum_Opcode_Intval {
}
impl SwitchManualEnum_Opcode_Intval {
    pub fn value(&self) -> Ref<u8> {
        self.value.borrow()
    }
}
impl SwitchManualEnum_Opcode_Intval {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct SwitchManualEnum_Opcode_Strval {
    pub _root: SharedType<SwitchManualEnum>,
    pub _parent: SharedType<SwitchManualEnum_Opcode>,
    pub _self: SharedType<Self>,
    value: RefCell<String>,
    _io: RefCell<BytesReader>,
}
impl KStruct for SwitchManualEnum_Opcode_Strval {
    type Root = SwitchManualEnum;
    type Parent = SwitchManualEnum_Opcode;

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
        *self_rc.value.borrow_mut() = bytes_to_str(&_io.read_bytes_term(0, false, true, true)?.into(), "ASCII")?;
        Ok(())
    }
}
impl SwitchManualEnum_Opcode_Strval {
}
impl SwitchManualEnum_Opcode_Strval {
    pub fn value(&self) -> Ref<String> {
        self.value.borrow()
    }
}
impl SwitchManualEnum_Opcode_Strval {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
