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
pub struct SwitchManualInt {
    pub _root: SharedType<SwitchManualInt>,
    pub _parent: SharedType<SwitchManualInt>,
    pub _self: SharedType<Self>,
    opcodes: RefCell<Vec<OptRc<SwitchManualInt_Opcode>>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for SwitchManualInt {
    type Root = SwitchManualInt;
    type Parent = SwitchManualInt;

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
                let t = Self::read_into::<_, SwitchManualInt_Opcode>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                self_rc.opcodes.borrow_mut().push(t);
                _i += 1;
            }
        }
        Ok(())
    }
}
impl SwitchManualInt {
}
impl SwitchManualInt {
    pub fn opcodes(&self) -> Ref<'_, Vec<OptRc<SwitchManualInt_Opcode>>> {
        self.opcodes.borrow()
    }
}
impl SwitchManualInt {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct SwitchManualInt_Opcode {
    pub _root: SharedType<SwitchManualInt>,
    pub _parent: SharedType<SwitchManualInt>,
    pub _self: SharedType<Self>,
    code: RefCell<u8>,
    body: RefCell<Option<SwitchManualInt_Opcode_Body>>,
    _io: RefCell<BytesReader>,
}
#[derive(Debug, Clone)]
pub enum SwitchManualInt_Opcode_Body {
    SwitchManualInt_Opcode_Intval(OptRc<SwitchManualInt_Opcode_Intval>),
    SwitchManualInt_Opcode_Strval(OptRc<SwitchManualInt_Opcode_Strval>),
}
impl From<&SwitchManualInt_Opcode_Body> for OptRc<SwitchManualInt_Opcode_Intval> {
    fn from(v: &SwitchManualInt_Opcode_Body) -> Self {
        if let SwitchManualInt_Opcode_Body::SwitchManualInt_Opcode_Intval(x) = v {
            return x.clone();
        }
        panic!("expected SwitchManualInt_Opcode_Body::SwitchManualInt_Opcode_Intval, got {:?}", v)
    }
}
impl From<OptRc<SwitchManualInt_Opcode_Intval>> for SwitchManualInt_Opcode_Body {
    fn from(v: OptRc<SwitchManualInt_Opcode_Intval>) -> Self {
        Self::SwitchManualInt_Opcode_Intval(v)
    }
}
impl From<&SwitchManualInt_Opcode_Body> for OptRc<SwitchManualInt_Opcode_Strval> {
    fn from(v: &SwitchManualInt_Opcode_Body) -> Self {
        if let SwitchManualInt_Opcode_Body::SwitchManualInt_Opcode_Strval(x) = v {
            return x.clone();
        }
        panic!("expected SwitchManualInt_Opcode_Body::SwitchManualInt_Opcode_Strval, got {:?}", v)
    }
}
impl From<OptRc<SwitchManualInt_Opcode_Strval>> for SwitchManualInt_Opcode_Body {
    fn from(v: OptRc<SwitchManualInt_Opcode_Strval>) -> Self {
        Self::SwitchManualInt_Opcode_Strval(v)
    }
}
impl KStruct for SwitchManualInt_Opcode {
    type Root = SwitchManualInt;
    type Parent = SwitchManualInt;

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
        *self_rc.code.borrow_mut() = _io.read_u1()?.into();
        match *self_rc.code() {
            73 => {
                let t = Self::read_into::<_, SwitchManualInt_Opcode_Intval>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                *self_rc.body.borrow_mut() = Some(t);
            }
            83 => {
                let t = Self::read_into::<_, SwitchManualInt_Opcode_Strval>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                *self_rc.body.borrow_mut() = Some(t);
            }
            _ => {}
        }
        Ok(())
    }
}
impl SwitchManualInt_Opcode {
}
impl SwitchManualInt_Opcode {
    pub fn code(&self) -> Ref<'_, u8> {
        self.code.borrow()
    }
}
impl SwitchManualInt_Opcode {
    pub fn body(&self) -> Ref<'_, Option<SwitchManualInt_Opcode_Body>> {
        self.body.borrow()
    }
}
impl SwitchManualInt_Opcode {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct SwitchManualInt_Opcode_Intval {
    pub _root: SharedType<SwitchManualInt>,
    pub _parent: SharedType<SwitchManualInt_Opcode>,
    pub _self: SharedType<Self>,
    value: RefCell<u8>,
    _io: RefCell<BytesReader>,
}
impl KStruct for SwitchManualInt_Opcode_Intval {
    type Root = SwitchManualInt;
    type Parent = SwitchManualInt_Opcode;

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
impl SwitchManualInt_Opcode_Intval {
}
impl SwitchManualInt_Opcode_Intval {
    pub fn value(&self) -> Ref<'_, u8> {
        self.value.borrow()
    }
}
impl SwitchManualInt_Opcode_Intval {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct SwitchManualInt_Opcode_Strval {
    pub _root: SharedType<SwitchManualInt>,
    pub _parent: SharedType<SwitchManualInt_Opcode>,
    pub _self: SharedType<Self>,
    value: RefCell<String>,
    _io: RefCell<BytesReader>,
}
impl KStruct for SwitchManualInt_Opcode_Strval {
    type Root = SwitchManualInt;
    type Parent = SwitchManualInt_Opcode;

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
impl SwitchManualInt_Opcode_Strval {
}
impl SwitchManualInt_Opcode_Strval {
    pub fn value(&self) -> Ref<'_, String> {
        self.value.borrow()
    }
}
impl SwitchManualInt_Opcode_Strval {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
