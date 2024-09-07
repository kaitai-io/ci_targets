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
pub struct SwitchManualEnumInvalidElse {
    pub _root: SharedType<SwitchManualEnumInvalidElse>,
    pub _parent: SharedType<SwitchManualEnumInvalidElse>,
    pub _self: SharedType<Self>,
    opcodes: RefCell<Vec<OptRc<SwitchManualEnumInvalidElse_Opcode>>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for SwitchManualEnumInvalidElse {
    type Root = SwitchManualEnumInvalidElse;
    type Parent = SwitchManualEnumInvalidElse;

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
                let t = Self::read_into::<_, SwitchManualEnumInvalidElse_Opcode>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                self_rc.opcodes.borrow_mut().push(t);
                _i += 1;
            }
        }
        Ok(())
    }
}
impl SwitchManualEnumInvalidElse {
}
impl SwitchManualEnumInvalidElse {
    pub fn opcodes(&self) -> Ref<Vec<OptRc<SwitchManualEnumInvalidElse_Opcode>>> {
        self.opcodes.borrow()
    }
}
impl SwitchManualEnumInvalidElse {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct SwitchManualEnumInvalidElse_Opcode {
    pub _root: SharedType<SwitchManualEnumInvalidElse>,
    pub _parent: SharedType<SwitchManualEnumInvalidElse>,
    pub _self: SharedType<Self>,
    code: RefCell<SwitchManualEnumInvalidElse_Opcode_CodeEnum>,
    body: RefCell<Option<SwitchManualEnumInvalidElse_Opcode_Body>>,
    _io: RefCell<BytesReader>,
}
#[derive(Debug, Clone)]
pub enum SwitchManualEnumInvalidElse_Opcode_Body {
    SwitchManualEnumInvalidElse_Opcode_Intval(OptRc<SwitchManualEnumInvalidElse_Opcode_Intval>),
    SwitchManualEnumInvalidElse_Opcode_Strval(OptRc<SwitchManualEnumInvalidElse_Opcode_Strval>),
    SwitchManualEnumInvalidElse_Opcode_Defval(OptRc<SwitchManualEnumInvalidElse_Opcode_Defval>),
}
impl From<&SwitchManualEnumInvalidElse_Opcode_Body> for OptRc<SwitchManualEnumInvalidElse_Opcode_Intval> {
    fn from(v: &SwitchManualEnumInvalidElse_Opcode_Body) -> Self {
        if let SwitchManualEnumInvalidElse_Opcode_Body::SwitchManualEnumInvalidElse_Opcode_Intval(x) = v {
            return x.clone();
        }
        panic!("expected SwitchManualEnumInvalidElse_Opcode_Body::SwitchManualEnumInvalidElse_Opcode_Intval, got {:?}", v)
    }
}
impl From<OptRc<SwitchManualEnumInvalidElse_Opcode_Intval>> for SwitchManualEnumInvalidElse_Opcode_Body {
    fn from(v: OptRc<SwitchManualEnumInvalidElse_Opcode_Intval>) -> Self {
        Self::SwitchManualEnumInvalidElse_Opcode_Intval(v)
    }
}
impl From<&SwitchManualEnumInvalidElse_Opcode_Body> for OptRc<SwitchManualEnumInvalidElse_Opcode_Strval> {
    fn from(v: &SwitchManualEnumInvalidElse_Opcode_Body) -> Self {
        if let SwitchManualEnumInvalidElse_Opcode_Body::SwitchManualEnumInvalidElse_Opcode_Strval(x) = v {
            return x.clone();
        }
        panic!("expected SwitchManualEnumInvalidElse_Opcode_Body::SwitchManualEnumInvalidElse_Opcode_Strval, got {:?}", v)
    }
}
impl From<OptRc<SwitchManualEnumInvalidElse_Opcode_Strval>> for SwitchManualEnumInvalidElse_Opcode_Body {
    fn from(v: OptRc<SwitchManualEnumInvalidElse_Opcode_Strval>) -> Self {
        Self::SwitchManualEnumInvalidElse_Opcode_Strval(v)
    }
}
impl From<&SwitchManualEnumInvalidElse_Opcode_Body> for OptRc<SwitchManualEnumInvalidElse_Opcode_Defval> {
    fn from(v: &SwitchManualEnumInvalidElse_Opcode_Body) -> Self {
        if let SwitchManualEnumInvalidElse_Opcode_Body::SwitchManualEnumInvalidElse_Opcode_Defval(x) = v {
            return x.clone();
        }
        panic!("expected SwitchManualEnumInvalidElse_Opcode_Body::SwitchManualEnumInvalidElse_Opcode_Defval, got {:?}", v)
    }
}
impl From<OptRc<SwitchManualEnumInvalidElse_Opcode_Defval>> for SwitchManualEnumInvalidElse_Opcode_Body {
    fn from(v: OptRc<SwitchManualEnumInvalidElse_Opcode_Defval>) -> Self {
        Self::SwitchManualEnumInvalidElse_Opcode_Defval(v)
    }
}
impl KStruct for SwitchManualEnumInvalidElse_Opcode {
    type Root = SwitchManualEnumInvalidElse;
    type Parent = SwitchManualEnumInvalidElse;

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
            SwitchManualEnumInvalidElse_Opcode_CodeEnum::Intval => {
                let t = Self::read_into::<_, SwitchManualEnumInvalidElse_Opcode_Intval>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                *self_rc.body.borrow_mut() = Some(t);
            }
            SwitchManualEnumInvalidElse_Opcode_CodeEnum::Strval => {
                let t = Self::read_into::<_, SwitchManualEnumInvalidElse_Opcode_Strval>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                *self_rc.body.borrow_mut() = Some(t);
            }
            _ => {
                let t = Self::read_into::<_, SwitchManualEnumInvalidElse_Opcode_Defval>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                *self_rc.body.borrow_mut() = Some(t);
            }
        }
        Ok(())
    }
}
impl SwitchManualEnumInvalidElse_Opcode {
}
impl SwitchManualEnumInvalidElse_Opcode {
    pub fn code(&self) -> Ref<SwitchManualEnumInvalidElse_Opcode_CodeEnum> {
        self.code.borrow()
    }
}
impl SwitchManualEnumInvalidElse_Opcode {
    pub fn body(&self) -> Ref<Option<SwitchManualEnumInvalidElse_Opcode_Body>> {
        self.body.borrow()
    }
}
impl SwitchManualEnumInvalidElse_Opcode {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
#[derive(Debug, PartialEq, Clone)]
pub enum SwitchManualEnumInvalidElse_Opcode_CodeEnum {
    Intval,
    Strval,
    Unknown(i64),
}

impl TryFrom<i64> for SwitchManualEnumInvalidElse_Opcode_CodeEnum {
    type Error = KError;
    fn try_from(flag: i64) -> KResult<SwitchManualEnumInvalidElse_Opcode_CodeEnum> {
        match flag {
            73 => Ok(SwitchManualEnumInvalidElse_Opcode_CodeEnum::Intval),
            83 => Ok(SwitchManualEnumInvalidElse_Opcode_CodeEnum::Strval),
            _ => Ok(SwitchManualEnumInvalidElse_Opcode_CodeEnum::Unknown(flag)),
        }
    }
}

impl From<&SwitchManualEnumInvalidElse_Opcode_CodeEnum> for i64 {
    fn from(v: &SwitchManualEnumInvalidElse_Opcode_CodeEnum) -> Self {
        match *v {
            SwitchManualEnumInvalidElse_Opcode_CodeEnum::Intval => 73,
            SwitchManualEnumInvalidElse_Opcode_CodeEnum::Strval => 83,
            SwitchManualEnumInvalidElse_Opcode_CodeEnum::Unknown(v) => v
        }
    }
}

impl Default for SwitchManualEnumInvalidElse_Opcode_CodeEnum {
    fn default() -> Self { SwitchManualEnumInvalidElse_Opcode_CodeEnum::Unknown(0) }
}


#[derive(Default, Debug, Clone)]
pub struct SwitchManualEnumInvalidElse_Opcode_Defval {
    pub _root: SharedType<SwitchManualEnumInvalidElse>,
    pub _parent: SharedType<SwitchManualEnumInvalidElse_Opcode>,
    pub _self: SharedType<Self>,
    _io: RefCell<BytesReader>,
    f_value: Cell<bool>,
    value: RefCell<i8>,
}
impl KStruct for SwitchManualEnumInvalidElse_Opcode_Defval {
    type Root = SwitchManualEnumInvalidElse;
    type Parent = SwitchManualEnumInvalidElse_Opcode;

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
impl SwitchManualEnumInvalidElse_Opcode_Defval {
    pub fn value(
        &self
    ) -> KResult<Ref<i8>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_value.get() {
            return Ok(self.value.borrow());
        }
        self.f_value.set(true);
        *self.value.borrow_mut() = (123) as i8;
        Ok(self.value.borrow())
    }
}
impl SwitchManualEnumInvalidElse_Opcode_Defval {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct SwitchManualEnumInvalidElse_Opcode_Intval {
    pub _root: SharedType<SwitchManualEnumInvalidElse>,
    pub _parent: SharedType<SwitchManualEnumInvalidElse_Opcode>,
    pub _self: SharedType<Self>,
    value: RefCell<u8>,
    _io: RefCell<BytesReader>,
}
impl KStruct for SwitchManualEnumInvalidElse_Opcode_Intval {
    type Root = SwitchManualEnumInvalidElse;
    type Parent = SwitchManualEnumInvalidElse_Opcode;

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
impl SwitchManualEnumInvalidElse_Opcode_Intval {
}
impl SwitchManualEnumInvalidElse_Opcode_Intval {
    pub fn value(&self) -> Ref<u8> {
        self.value.borrow()
    }
}
impl SwitchManualEnumInvalidElse_Opcode_Intval {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct SwitchManualEnumInvalidElse_Opcode_Strval {
    pub _root: SharedType<SwitchManualEnumInvalidElse>,
    pub _parent: SharedType<SwitchManualEnumInvalidElse_Opcode>,
    pub _self: SharedType<Self>,
    value: RefCell<String>,
    _io: RefCell<BytesReader>,
}
impl KStruct for SwitchManualEnumInvalidElse_Opcode_Strval {
    type Root = SwitchManualEnumInvalidElse;
    type Parent = SwitchManualEnumInvalidElse_Opcode;

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
impl SwitchManualEnumInvalidElse_Opcode_Strval {
}
impl SwitchManualEnumInvalidElse_Opcode_Strval {
    pub fn value(&self) -> Ref<String> {
        self.value.borrow()
    }
}
impl SwitchManualEnumInvalidElse_Opcode_Strval {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
