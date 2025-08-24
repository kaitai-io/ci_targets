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
pub struct SwitchManualStrElse {
    pub _root: SharedType<SwitchManualStrElse>,
    pub _parent: SharedType<SwitchManualStrElse>,
    pub _self: SharedType<Self>,
    opcodes: RefCell<Vec<OptRc<SwitchManualStrElse_Opcode>>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for SwitchManualStrElse {
    type Root = SwitchManualStrElse;
    type Parent = SwitchManualStrElse;

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
                let t = Self::read_into::<_, SwitchManualStrElse_Opcode>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                self_rc.opcodes.borrow_mut().push(t);
                _i += 1;
            }
        }
        Ok(())
    }
}
impl SwitchManualStrElse {
}
impl SwitchManualStrElse {
    pub fn opcodes(&self) -> Ref<'_, Vec<OptRc<SwitchManualStrElse_Opcode>>> {
        self.opcodes.borrow()
    }
}
impl SwitchManualStrElse {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct SwitchManualStrElse_Opcode {
    pub _root: SharedType<SwitchManualStrElse>,
    pub _parent: SharedType<SwitchManualStrElse>,
    pub _self: SharedType<Self>,
    code: RefCell<String>,
    body: RefCell<Option<SwitchManualStrElse_Opcode_Body>>,
    _io: RefCell<BytesReader>,
}
#[derive(Debug, Clone)]
pub enum SwitchManualStrElse_Opcode_Body {
    SwitchManualStrElse_Opcode_Noneval(OptRc<SwitchManualStrElse_Opcode_Noneval>),
    SwitchManualStrElse_Opcode_Intval(OptRc<SwitchManualStrElse_Opcode_Intval>),
    SwitchManualStrElse_Opcode_Strval(OptRc<SwitchManualStrElse_Opcode_Strval>),
}
impl From<&SwitchManualStrElse_Opcode_Body> for OptRc<SwitchManualStrElse_Opcode_Noneval> {
    fn from(v: &SwitchManualStrElse_Opcode_Body) -> Self {
        if let SwitchManualStrElse_Opcode_Body::SwitchManualStrElse_Opcode_Noneval(x) = v {
            return x.clone();
        }
        panic!("expected SwitchManualStrElse_Opcode_Body::SwitchManualStrElse_Opcode_Noneval, got {:?}", v)
    }
}
impl From<OptRc<SwitchManualStrElse_Opcode_Noneval>> for SwitchManualStrElse_Opcode_Body {
    fn from(v: OptRc<SwitchManualStrElse_Opcode_Noneval>) -> Self {
        Self::SwitchManualStrElse_Opcode_Noneval(v)
    }
}
impl From<&SwitchManualStrElse_Opcode_Body> for OptRc<SwitchManualStrElse_Opcode_Intval> {
    fn from(v: &SwitchManualStrElse_Opcode_Body) -> Self {
        if let SwitchManualStrElse_Opcode_Body::SwitchManualStrElse_Opcode_Intval(x) = v {
            return x.clone();
        }
        panic!("expected SwitchManualStrElse_Opcode_Body::SwitchManualStrElse_Opcode_Intval, got {:?}", v)
    }
}
impl From<OptRc<SwitchManualStrElse_Opcode_Intval>> for SwitchManualStrElse_Opcode_Body {
    fn from(v: OptRc<SwitchManualStrElse_Opcode_Intval>) -> Self {
        Self::SwitchManualStrElse_Opcode_Intval(v)
    }
}
impl From<&SwitchManualStrElse_Opcode_Body> for OptRc<SwitchManualStrElse_Opcode_Strval> {
    fn from(v: &SwitchManualStrElse_Opcode_Body) -> Self {
        if let SwitchManualStrElse_Opcode_Body::SwitchManualStrElse_Opcode_Strval(x) = v {
            return x.clone();
        }
        panic!("expected SwitchManualStrElse_Opcode_Body::SwitchManualStrElse_Opcode_Strval, got {:?}", v)
    }
}
impl From<OptRc<SwitchManualStrElse_Opcode_Strval>> for SwitchManualStrElse_Opcode_Body {
    fn from(v: OptRc<SwitchManualStrElse_Opcode_Strval>) -> Self {
        Self::SwitchManualStrElse_Opcode_Strval(v)
    }
}
impl KStruct for SwitchManualStrElse_Opcode {
    type Root = SwitchManualStrElse;
    type Parent = SwitchManualStrElse;

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
        *self_rc.code.borrow_mut() = bytes_to_str(&_io.read_bytes(1 as usize)?.into(), "ASCII")?;
        {
            let on = self_rc.code();
            if *on == "I" {
                let t = Self::read_into::<_, SwitchManualStrElse_Opcode_Intval>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                *self_rc.body.borrow_mut() = Some(t);
            }
            else if *on == "S" {
                let t = Self::read_into::<_, SwitchManualStrElse_Opcode_Strval>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                *self_rc.body.borrow_mut() = Some(t);
            }
            else {
                let t = Self::read_into::<_, SwitchManualStrElse_Opcode_Noneval>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                *self_rc.body.borrow_mut() = Some(t);
            }
        }
        Ok(())
    }
}
impl SwitchManualStrElse_Opcode {
}
impl SwitchManualStrElse_Opcode {
    pub fn code(&self) -> Ref<'_, String> {
        self.code.borrow()
    }
}
impl SwitchManualStrElse_Opcode {
    pub fn body(&self) -> Ref<'_, Option<SwitchManualStrElse_Opcode_Body>> {
        self.body.borrow()
    }
}
impl SwitchManualStrElse_Opcode {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct SwitchManualStrElse_Opcode_Intval {
    pub _root: SharedType<SwitchManualStrElse>,
    pub _parent: SharedType<SwitchManualStrElse_Opcode>,
    pub _self: SharedType<Self>,
    value: RefCell<u8>,
    _io: RefCell<BytesReader>,
}
impl KStruct for SwitchManualStrElse_Opcode_Intval {
    type Root = SwitchManualStrElse;
    type Parent = SwitchManualStrElse_Opcode;

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
impl SwitchManualStrElse_Opcode_Intval {
}
impl SwitchManualStrElse_Opcode_Intval {
    pub fn value(&self) -> Ref<'_, u8> {
        self.value.borrow()
    }
}
impl SwitchManualStrElse_Opcode_Intval {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct SwitchManualStrElse_Opcode_Noneval {
    pub _root: SharedType<SwitchManualStrElse>,
    pub _parent: SharedType<SwitchManualStrElse_Opcode>,
    pub _self: SharedType<Self>,
    filler: RefCell<u32>,
    _io: RefCell<BytesReader>,
}
impl KStruct for SwitchManualStrElse_Opcode_Noneval {
    type Root = SwitchManualStrElse;
    type Parent = SwitchManualStrElse_Opcode;

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
        *self_rc.filler.borrow_mut() = _io.read_u4le()?.into();
        Ok(())
    }
}
impl SwitchManualStrElse_Opcode_Noneval {
}
impl SwitchManualStrElse_Opcode_Noneval {
    pub fn filler(&self) -> Ref<'_, u32> {
        self.filler.borrow()
    }
}
impl SwitchManualStrElse_Opcode_Noneval {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct SwitchManualStrElse_Opcode_Strval {
    pub _root: SharedType<SwitchManualStrElse>,
    pub _parent: SharedType<SwitchManualStrElse_Opcode>,
    pub _self: SharedType<Self>,
    value: RefCell<String>,
    _io: RefCell<BytesReader>,
}
impl KStruct for SwitchManualStrElse_Opcode_Strval {
    type Root = SwitchManualStrElse;
    type Parent = SwitchManualStrElse_Opcode;

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
impl SwitchManualStrElse_Opcode_Strval {
}
impl SwitchManualStrElse_Opcode_Strval {
    pub fn value(&self) -> Ref<'_, String> {
        self.value.borrow()
    }
}
impl SwitchManualStrElse_Opcode_Strval {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
