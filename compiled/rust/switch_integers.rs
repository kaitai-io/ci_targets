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
pub struct SwitchIntegers {
    pub _root: SharedType<SwitchIntegers>,
    pub _parent: SharedType<SwitchIntegers>,
    pub _self: SharedType<Self>,
    opcodes: RefCell<Vec<OptRc<SwitchIntegers_Opcode>>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for SwitchIntegers {
    type Root = SwitchIntegers;
    type Parent = SwitchIntegers;

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
                let t = Self::read_into::<_, SwitchIntegers_Opcode>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                self_rc.opcodes.borrow_mut().push(t);
                _i += 1;
            }
        }
        Ok(())
    }
}
impl SwitchIntegers {
}
impl SwitchIntegers {
    pub fn opcodes(&self) -> Ref<'_, Vec<OptRc<SwitchIntegers_Opcode>>> {
        self.opcodes.borrow()
    }
}
impl SwitchIntegers {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct SwitchIntegers_Opcode {
    pub _root: SharedType<SwitchIntegers>,
    pub _parent: SharedType<SwitchIntegers>,
    pub _self: SharedType<Self>,
    code: RefCell<u8>,
    body: RefCell<Option<SwitchIntegers_Opcode_Body>>,
    _io: RefCell<BytesReader>,
}
#[derive(Debug, Clone)]
pub enum SwitchIntegers_Opcode_Body {
    U1(u8),
    U2(u16),
    U4(u32),
    U8(u64),
}
impl From<u8> for SwitchIntegers_Opcode_Body {
    fn from(v: u8) -> Self {
        Self::U1(v)
    }
}
impl From<&SwitchIntegers_Opcode_Body> for u8 {
    fn from(e: &SwitchIntegers_Opcode_Body) -> Self {
        if let SwitchIntegers_Opcode_Body::U1(v) = e {
            return *v
        }
        panic!("trying to convert from enum SwitchIntegers_Opcode_Body::U1 to u8, enum value {:?}", e)
    }
}
impl From<u16> for SwitchIntegers_Opcode_Body {
    fn from(v: u16) -> Self {
        Self::U2(v)
    }
}
impl From<&SwitchIntegers_Opcode_Body> for u16 {
    fn from(e: &SwitchIntegers_Opcode_Body) -> Self {
        if let SwitchIntegers_Opcode_Body::U2(v) = e {
            return *v
        }
        panic!("trying to convert from enum SwitchIntegers_Opcode_Body::U2 to u16, enum value {:?}", e)
    }
}
impl From<u32> for SwitchIntegers_Opcode_Body {
    fn from(v: u32) -> Self {
        Self::U4(v)
    }
}
impl From<&SwitchIntegers_Opcode_Body> for u32 {
    fn from(e: &SwitchIntegers_Opcode_Body) -> Self {
        if let SwitchIntegers_Opcode_Body::U4(v) = e {
            return *v
        }
        panic!("trying to convert from enum SwitchIntegers_Opcode_Body::U4 to u32, enum value {:?}", e)
    }
}
impl From<u64> for SwitchIntegers_Opcode_Body {
    fn from(v: u64) -> Self {
        Self::U8(v)
    }
}
impl From<&SwitchIntegers_Opcode_Body> for u64 {
    fn from(e: &SwitchIntegers_Opcode_Body) -> Self {
        if let SwitchIntegers_Opcode_Body::U8(v) = e {
            return *v
        }
        panic!("trying to convert from enum SwitchIntegers_Opcode_Body::U8 to u64, enum value {:?}", e)
    }
}
impl From<&SwitchIntegers_Opcode_Body> for usize {
    fn from(e: &SwitchIntegers_Opcode_Body) -> Self {
        match e {
            SwitchIntegers_Opcode_Body::U1(v) => *v as usize,
            SwitchIntegers_Opcode_Body::U2(v) => *v as usize,
            SwitchIntegers_Opcode_Body::U4(v) => *v as usize,
            SwitchIntegers_Opcode_Body::U8(v) => *v as usize,
        }
    }
}

impl KStruct for SwitchIntegers_Opcode {
    type Root = SwitchIntegers;
    type Parent = SwitchIntegers;

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
            1 => {
                *self_rc.body.borrow_mut() = Some(_io.read_u1()?.into());
            }
            2 => {
                *self_rc.body.borrow_mut() = Some(_io.read_u2le()?.into());
            }
            4 => {
                *self_rc.body.borrow_mut() = Some(_io.read_u4le()?.into());
            }
            8 => {
                *self_rc.body.borrow_mut() = Some(_io.read_u8le()?.into());
            }
            _ => {}
        }
        Ok(())
    }
}
impl SwitchIntegers_Opcode {
}
impl SwitchIntegers_Opcode {
    pub fn code(&self) -> Ref<'_, u8> {
        self.code.borrow()
    }
}
impl SwitchIntegers_Opcode {
    pub fn body(&self) -> usize {
        self.body.borrow().as_ref().unwrap().into()
    }
    pub fn body_enum(&self) -> Ref<'_, Option<SwitchIntegers_Opcode_Body>> {
        self.body.borrow()
    }
}
impl SwitchIntegers_Opcode {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
