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
pub struct ExprBits {
    pub _root: SharedType<ExprBits>,
    pub _parent: SharedType<ExprBits>,
    pub _self: SharedType<Self>,
    enum_seq: RefCell<ExprBits_Items>,
    a: RefCell<u64>,
    byte_size: RefCell<Vec<u8>>,
    repeat_expr: RefCell<Vec<i8>>,
    switch_on_type: RefCell<Option<ExprBits_SwitchOnType>>,
    switch_on_endian: RefCell<OptRc<ExprBits_EndianSwitch>>,
    _io: RefCell<BytesReader>,
    f_enum_inst: Cell<bool>,
    enum_inst: RefCell<ExprBits_Items>,
    f_inst_pos: Cell<bool>,
    inst_pos: RefCell<i8>,
}
#[derive(Debug, Clone)]
pub enum ExprBits_SwitchOnType {
    S1(i8),
}
impl From<i8> for ExprBits_SwitchOnType {
    fn from(v: i8) -> Self {
        Self::S1(v)
    }
}
impl From<&ExprBits_SwitchOnType> for i8 {
    fn from(e: &ExprBits_SwitchOnType) -> Self {
        if let ExprBits_SwitchOnType::S1(v) = e {
            return *v
        }
        panic!("trying to convert from enum ExprBits_SwitchOnType::S1 to i8, enum value {:?}", e)
    }
}
impl From<&ExprBits_SwitchOnType> for usize {
    fn from(e: &ExprBits_SwitchOnType) -> Self {
        match e {
            ExprBits_SwitchOnType::S1(v) => *v as usize,
        }
    }
}

impl KStruct for ExprBits {
    type Root = ExprBits;
    type Parent = ExprBits;

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
        *self_rc.enum_seq.borrow_mut() = (_io.read_bits_int_be(2)? as i64).try_into()?;
        *self_rc.a.borrow_mut() = _io.read_bits_int_be(3)?;
        _io.align_to_byte()?;
        *self_rc.byte_size.borrow_mut() = _io.read_bytes(*self_rc.a() as usize)?.into();
        *self_rc.repeat_expr.borrow_mut() = Vec::new();
        let l_repeat_expr = *self_rc.a();
        for _i in 0..l_repeat_expr {
            self_rc.repeat_expr.borrow_mut().push(_io.read_s1()?.into());
        }
        match *self_rc.a() {
            2 => {
                *self_rc.switch_on_type.borrow_mut() = Some(_io.read_s1()?.into());
            }
            _ => {}
        }
        let t = Self::read_into::<_, ExprBits_EndianSwitch>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.switch_on_endian.borrow_mut() = t;
        Ok(())
    }
}
impl ExprBits {
    pub fn enum_inst(
        &self
    ) -> KResult<Ref<ExprBits_Items>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_enum_inst.get() {
            return Ok(self.enum_inst.borrow());
        }
        self.f_enum_inst.set(true);
        *self.enum_inst.borrow_mut() = (*self.a() as i64).try_into()?;
        Ok(self.enum_inst.borrow())
    }
    pub fn inst_pos(
        &self
    ) -> KResult<Ref<i8>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_inst_pos.get() {
            return Ok(self.inst_pos.borrow());
        }
        self.f_inst_pos.set(true);
        let _pos = _io.pos();
        _io.seek(*self.a() as usize)?;
        *self.inst_pos.borrow_mut() = _io.read_s1()?.into();
        _io.seek(_pos)?;
        Ok(self.inst_pos.borrow())
    }
}
impl ExprBits {
    pub fn enum_seq(&self) -> Ref<ExprBits_Items> {
        self.enum_seq.borrow()
    }
}
impl ExprBits {
    pub fn a(&self) -> Ref<u64> {
        self.a.borrow()
    }
}
impl ExprBits {
    pub fn byte_size(&self) -> Ref<Vec<u8>> {
        self.byte_size.borrow()
    }
}
impl ExprBits {
    pub fn repeat_expr(&self) -> Ref<Vec<i8>> {
        self.repeat_expr.borrow()
    }
}
impl ExprBits {
    pub fn switch_on_type(&self) -> usize {
        self.switch_on_type.borrow().as_ref().unwrap().into()
    }
    pub fn switch_on_type_enum(&self) -> Ref<Option<ExprBits_SwitchOnType>> {
        self.switch_on_type.borrow()
    }
}
impl ExprBits {
    pub fn switch_on_endian(&self) -> Ref<OptRc<ExprBits_EndianSwitch>> {
        self.switch_on_endian.borrow()
    }
}
impl ExprBits {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
#[derive(Debug, PartialEq, Clone)]
pub enum ExprBits_Items {
    Foo,
    Bar,
    Unknown(i64),
}

impl TryFrom<i64> for ExprBits_Items {
    type Error = KError;
    fn try_from(flag: i64) -> KResult<ExprBits_Items> {
        match flag {
            1 => Ok(ExprBits_Items::Foo),
            2 => Ok(ExprBits_Items::Bar),
            _ => Ok(ExprBits_Items::Unknown(flag)),
        }
    }
}

impl From<&ExprBits_Items> for i64 {
    fn from(v: &ExprBits_Items) -> Self {
        match *v {
            ExprBits_Items::Foo => 1,
            ExprBits_Items::Bar => 2,
            ExprBits_Items::Unknown(v) => v
        }
    }
}

impl Default for ExprBits_Items {
    fn default() -> Self { ExprBits_Items::Unknown(0) }
}


#[derive(Default, Debug, Clone)]
pub struct ExprBits_EndianSwitch {
    pub _root: SharedType<ExprBits>,
    pub _parent: SharedType<ExprBits>,
    pub _self: SharedType<Self>,
    foo: RefCell<i16>,
    _io: RefCell<BytesReader>,
    _is_le: RefCell<i32>,
}
impl KStruct for ExprBits_EndianSwitch {
    type Root = ExprBits;
    type Parent = ExprBits;

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
        match *_prc.as_ref().unwrap().a() {
            1 => {
                *self_rc._is_le.borrow_mut() = (1) as i32;
            }
            2 => {
                *self_rc._is_le.borrow_mut() = (2) as i32;
            }
            _ => {}
        }
        if *self_rc._is_le.borrow() == 0 {
            return Err(KError::UndecidedEndianness { src_path: "/types/endian_switch".to_string() });
        }
        *self_rc.foo.borrow_mut() = if *self_rc._is_le.borrow() == 1 { _io.read_s2le()?.into() } else { _io.read_s2be()?.into() };
        Ok(())
    }
}
impl ExprBits_EndianSwitch {
    pub fn set_endian(&mut self, _is_le: i32) {
        *self._is_le.borrow_mut() = _is_le;
    }
}
impl ExprBits_EndianSwitch {
}
impl ExprBits_EndianSwitch {
    pub fn foo(&self) -> Ref<i16> {
        self.foo.borrow()
    }
}
impl ExprBits_EndianSwitch {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
