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
pub struct SwitchManualEnumInvalid {
    pub _root: SharedType<SwitchManualEnumInvalid>,
    pub _parent: SharedType<SwitchManualEnumInvalid>,
    pub _self: SharedType<Self>,
    opcodes: RefCell<Vec<OptRc<SwitchManualEnumInvalid_Opcode>>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for SwitchManualEnumInvalid {
    type Root = SwitchManualEnumInvalid;
    type Parent = SwitchManualEnumInvalid;

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
                let t = Self::read_into::<_, SwitchManualEnumInvalid_Opcode>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                self_rc.opcodes.borrow_mut().push(t);
                _i += 1;
            }
        }
        Ok(())
    }
}
impl SwitchManualEnumInvalid {
}
impl SwitchManualEnumInvalid {
    pub fn opcodes(&self) -> Ref<Vec<OptRc<SwitchManualEnumInvalid_Opcode>>> {
        self.opcodes.borrow()
    }
}
impl SwitchManualEnumInvalid {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct SwitchManualEnumInvalid_Opcode {
    pub _root: SharedType<SwitchManualEnumInvalid>,
    pub _parent: SharedType<SwitchManualEnumInvalid>,
    pub _self: SharedType<Self>,
    code: RefCell<SwitchManualEnumInvalid_Opcode_CodeEnum>,
    body: RefCell<Option<SwitchManualEnumInvalid_Opcode_Body>>,
    _io: RefCell<BytesReader>,
}
#[derive(Debug, Clone)]
pub enum SwitchManualEnumInvalid_Opcode_Body {
    SwitchManualEnumInvalid_Opcode_Intval(OptRc<SwitchManualEnumInvalid_Opcode_Intval>),
    SwitchManualEnumInvalid_Opcode_Strval(OptRc<SwitchManualEnumInvalid_Opcode_Strval>),
}
impl From<&SwitchManualEnumInvalid_Opcode_Body> for OptRc<SwitchManualEnumInvalid_Opcode_Intval> {
    fn from(v: &SwitchManualEnumInvalid_Opcode_Body) -> Self {
        if let SwitchManualEnumInvalid_Opcode_Body::SwitchManualEnumInvalid_Opcode_Intval(x) = v {
            return x.clone();
        }
        panic!("expected SwitchManualEnumInvalid_Opcode_Body::SwitchManualEnumInvalid_Opcode_Intval, got {:?}", v)
    }
}
impl From<OptRc<SwitchManualEnumInvalid_Opcode_Intval>> for SwitchManualEnumInvalid_Opcode_Body {
    fn from(v: OptRc<SwitchManualEnumInvalid_Opcode_Intval>) -> Self {
        Self::SwitchManualEnumInvalid_Opcode_Intval(v)
    }
}
impl From<&SwitchManualEnumInvalid_Opcode_Body> for OptRc<SwitchManualEnumInvalid_Opcode_Strval> {
    fn from(v: &SwitchManualEnumInvalid_Opcode_Body) -> Self {
        if let SwitchManualEnumInvalid_Opcode_Body::SwitchManualEnumInvalid_Opcode_Strval(x) = v {
            return x.clone();
        }
        panic!("expected SwitchManualEnumInvalid_Opcode_Body::SwitchManualEnumInvalid_Opcode_Strval, got {:?}", v)
    }
}
impl From<OptRc<SwitchManualEnumInvalid_Opcode_Strval>> for SwitchManualEnumInvalid_Opcode_Body {
    fn from(v: OptRc<SwitchManualEnumInvalid_Opcode_Strval>) -> Self {
        Self::SwitchManualEnumInvalid_Opcode_Strval(v)
    }
}
impl KStruct for SwitchManualEnumInvalid_Opcode {
    type Root = SwitchManualEnumInvalid;
    type Parent = SwitchManualEnumInvalid;

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
            SwitchManualEnumInvalid_Opcode_CodeEnum::Intval => {
                let t = Self::read_into::<_, SwitchManualEnumInvalid_Opcode_Intval>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                *self_rc.body.borrow_mut() = Some(t);
            }
            SwitchManualEnumInvalid_Opcode_CodeEnum::Strval => {
                let t = Self::read_into::<_, SwitchManualEnumInvalid_Opcode_Strval>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                *self_rc.body.borrow_mut() = Some(t);
            }
            _ => {}
        }
        Ok(())
    }
}
impl SwitchManualEnumInvalid_Opcode {
}
impl SwitchManualEnumInvalid_Opcode {
    pub fn code(&self) -> Ref<SwitchManualEnumInvalid_Opcode_CodeEnum> {
        self.code.borrow()
    }
}
impl SwitchManualEnumInvalid_Opcode {
    pub fn body(&self) -> Ref<Option<SwitchManualEnumInvalid_Opcode_Body>> {
        self.body.borrow()
    }
}
impl SwitchManualEnumInvalid_Opcode {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
#[derive(Debug, PartialEq, Clone)]
pub enum SwitchManualEnumInvalid_Opcode_CodeEnum {
    Intval,
    Strval,
    Unknown(i64),
}

impl TryFrom<i64> for SwitchManualEnumInvalid_Opcode_CodeEnum {
    type Error = KError;
    fn try_from(flag: i64) -> KResult<SwitchManualEnumInvalid_Opcode_CodeEnum> {
        match flag {
            73 => Ok(SwitchManualEnumInvalid_Opcode_CodeEnum::Intval),
            83 => Ok(SwitchManualEnumInvalid_Opcode_CodeEnum::Strval),
            _ => Ok(SwitchManualEnumInvalid_Opcode_CodeEnum::Unknown(flag)),
        }
    }
}

impl From<&SwitchManualEnumInvalid_Opcode_CodeEnum> for i64 {
    fn from(v: &SwitchManualEnumInvalid_Opcode_CodeEnum) -> Self {
        match *v {
            SwitchManualEnumInvalid_Opcode_CodeEnum::Intval => 73,
            SwitchManualEnumInvalid_Opcode_CodeEnum::Strval => 83,
            SwitchManualEnumInvalid_Opcode_CodeEnum::Unknown(v) => v
        }
    }
}

impl Default for SwitchManualEnumInvalid_Opcode_CodeEnum {
    fn default() -> Self { SwitchManualEnumInvalid_Opcode_CodeEnum::Unknown(0) }
}


#[derive(Default, Debug, Clone)]
pub struct SwitchManualEnumInvalid_Opcode_Intval {
    pub _root: SharedType<SwitchManualEnumInvalid>,
    pub _parent: SharedType<SwitchManualEnumInvalid_Opcode>,
    pub _self: SharedType<Self>,
    value: RefCell<u8>,
    _io: RefCell<BytesReader>,
}
impl KStruct for SwitchManualEnumInvalid_Opcode_Intval {
    type Root = SwitchManualEnumInvalid;
    type Parent = SwitchManualEnumInvalid_Opcode;

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
impl SwitchManualEnumInvalid_Opcode_Intval {
}
impl SwitchManualEnumInvalid_Opcode_Intval {
    pub fn value(&self) -> Ref<u8> {
        self.value.borrow()
    }
}
impl SwitchManualEnumInvalid_Opcode_Intval {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct SwitchManualEnumInvalid_Opcode_Strval {
    pub _root: SharedType<SwitchManualEnumInvalid>,
    pub _parent: SharedType<SwitchManualEnumInvalid_Opcode>,
    pub _self: SharedType<Self>,
    value: RefCell<String>,
    _io: RefCell<BytesReader>,
}
impl KStruct for SwitchManualEnumInvalid_Opcode_Strval {
    type Root = SwitchManualEnumInvalid;
    type Parent = SwitchManualEnumInvalid_Opcode;

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
impl SwitchManualEnumInvalid_Opcode_Strval {
}
impl SwitchManualEnumInvalid_Opcode_Strval {
    pub fn value(&self) -> Ref<String> {
        self.value.borrow()
    }
}
impl SwitchManualEnumInvalid_Opcode_Strval {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
