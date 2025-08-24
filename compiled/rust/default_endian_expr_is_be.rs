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
pub struct DefaultEndianExprIsBe {
    pub _root: SharedType<DefaultEndianExprIsBe>,
    pub _parent: SharedType<DefaultEndianExprIsBe>,
    pub _self: SharedType<Self>,
    docs: RefCell<Vec<OptRc<DefaultEndianExprIsBe_Doc>>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for DefaultEndianExprIsBe {
    type Root = DefaultEndianExprIsBe;
    type Parent = DefaultEndianExprIsBe;

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
        *self_rc.docs.borrow_mut() = Vec::new();
        {
            let mut _i = 0;
            while !_io.is_eof() {
                let t = Self::read_into::<_, DefaultEndianExprIsBe_Doc>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                self_rc.docs.borrow_mut().push(t);
                _i += 1;
            }
        }
        Ok(())
    }
}
impl DefaultEndianExprIsBe {
}
impl DefaultEndianExprIsBe {
    pub fn docs(&self) -> Ref<'_, Vec<OptRc<DefaultEndianExprIsBe_Doc>>> {
        self.docs.borrow()
    }
}
impl DefaultEndianExprIsBe {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct DefaultEndianExprIsBe_Doc {
    pub _root: SharedType<DefaultEndianExprIsBe>,
    pub _parent: SharedType<DefaultEndianExprIsBe>,
    pub _self: SharedType<Self>,
    indicator: RefCell<Vec<u8>>,
    main: RefCell<OptRc<DefaultEndianExprIsBe_Doc_MainObj>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for DefaultEndianExprIsBe_Doc {
    type Root = DefaultEndianExprIsBe;
    type Parent = DefaultEndianExprIsBe;

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
        *self_rc.indicator.borrow_mut() = _io.read_bytes(2 as usize)?.into();
        let t = Self::read_into::<_, DefaultEndianExprIsBe_Doc_MainObj>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.main.borrow_mut() = t;
        Ok(())
    }
}
impl DefaultEndianExprIsBe_Doc {
}
impl DefaultEndianExprIsBe_Doc {
    pub fn indicator(&self) -> Ref<'_, Vec<u8>> {
        self.indicator.borrow()
    }
}
impl DefaultEndianExprIsBe_Doc {
    pub fn main(&self) -> Ref<'_, OptRc<DefaultEndianExprIsBe_Doc_MainObj>> {
        self.main.borrow()
    }
}
impl DefaultEndianExprIsBe_Doc {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct DefaultEndianExprIsBe_Doc_MainObj {
    pub _root: SharedType<DefaultEndianExprIsBe>,
    pub _parent: SharedType<DefaultEndianExprIsBe_Doc>,
    pub _self: SharedType<Self>,
    some_int: RefCell<u32>,
    some_int_be: RefCell<u16>,
    some_int_le: RefCell<u16>,
    _io: RefCell<BytesReader>,
    f_inst_int: Cell<bool>,
    inst_int: RefCell<u32>,
    f_inst_sub: Cell<bool>,
    inst_sub: RefCell<OptRc<DefaultEndianExprIsBe_Doc_MainObj_SubMainObj>>,
    _is_le: RefCell<i32>,
}
impl KStruct for DefaultEndianExprIsBe_Doc_MainObj {
    type Root = DefaultEndianExprIsBe;
    type Parent = DefaultEndianExprIsBe_Doc;

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
        {
            let on = _prc.as_ref().unwrap().indicator();
            if *on == vec![0x4du8, 0x4du8] {
                *self_rc._is_le.borrow_mut() = (2) as i32;
            }
            else {
                *self_rc._is_le.borrow_mut() = (1) as i32;
            }
        }
        if *self_rc._is_le.borrow() == 0 {
            return Err(KError::UndecidedEndianness { src_path: "/types/doc/types/main_obj".to_string() });
        }
        *self_rc.some_int.borrow_mut() = if *self_rc._is_le.borrow() == 1 { _io.read_u4le()?.into() } else { _io.read_u4be()?.into() };
        *self_rc.some_int_be.borrow_mut() = _io.read_u2be()?.into();
        *self_rc.some_int_le.borrow_mut() = _io.read_u2le()?.into();
        Ok(())
    }
}
impl DefaultEndianExprIsBe_Doc_MainObj {
    pub fn set_endian(&mut self, _is_le: i32) {
        *self._is_le.borrow_mut() = _is_le;
    }
}
impl DefaultEndianExprIsBe_Doc_MainObj {
    pub fn inst_int(
        &self
    ) -> KResult<Ref<'_, u32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_inst_int.get() {
            return Ok(self.inst_int.borrow());
        }
        self.f_inst_int.set(true);
        let _pos = _io.pos();
        _io.seek(2 as usize)?;
        *self.inst_int.borrow_mut() = if *self._is_le.borrow() == 1 { _io.read_u4le()?.into() } else { _io.read_u4be()?.into() };
        _io.seek(_pos)?;
        Ok(self.inst_int.borrow())
    }
    pub fn inst_sub(
        &self
    ) -> KResult<Ref<'_, OptRc<DefaultEndianExprIsBe_Doc_MainObj_SubMainObj>>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_inst_sub.get() {
            return Ok(self.inst_sub.borrow());
        }
        let _pos = _io.pos();
        _io.seek(2 as usize)?;
        let f = |t : &mut DefaultEndianExprIsBe_Doc_MainObj_SubMainObj| Ok(t.set_endian(*self._is_le.borrow()));
        let t = Self::read_into_with_init::<_, DefaultEndianExprIsBe_Doc_MainObj_SubMainObj>(&*_io, Some(self._root.clone()), Some(self._self.clone()), &f)?.into();
        *self.inst_sub.borrow_mut() = t;
        _io.seek(_pos)?;
        Ok(self.inst_sub.borrow())
    }
}
impl DefaultEndianExprIsBe_Doc_MainObj {
    pub fn some_int(&self) -> Ref<'_, u32> {
        self.some_int.borrow()
    }
}
impl DefaultEndianExprIsBe_Doc_MainObj {
    pub fn some_int_be(&self) -> Ref<'_, u16> {
        self.some_int_be.borrow()
    }
}
impl DefaultEndianExprIsBe_Doc_MainObj {
    pub fn some_int_le(&self) -> Ref<'_, u16> {
        self.some_int_le.borrow()
    }
}
impl DefaultEndianExprIsBe_Doc_MainObj {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct DefaultEndianExprIsBe_Doc_MainObj_SubMainObj {
    pub _root: SharedType<DefaultEndianExprIsBe>,
    pub _parent: SharedType<DefaultEndianExprIsBe_Doc_MainObj>,
    pub _self: SharedType<Self>,
    foo: RefCell<u32>,
    _io: RefCell<BytesReader>,
    _is_le: RefCell<i32>,
}
impl KStruct for DefaultEndianExprIsBe_Doc_MainObj_SubMainObj {
    type Root = DefaultEndianExprIsBe;
    type Parent = DefaultEndianExprIsBe_Doc_MainObj;

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
        *self_rc.foo.borrow_mut() = if *self_rc._is_le.borrow() == 1 { _io.read_u4le()?.into() } else { _io.read_u4be()?.into() };
        Ok(())
    }
}
impl DefaultEndianExprIsBe_Doc_MainObj_SubMainObj {
    pub fn set_endian(&mut self, _is_le: i32) {
        *self._is_le.borrow_mut() = _is_le;
    }
}
impl DefaultEndianExprIsBe_Doc_MainObj_SubMainObj {
}
impl DefaultEndianExprIsBe_Doc_MainObj_SubMainObj {
    pub fn foo(&self) -> Ref<'_, u32> {
        self.foo.borrow()
    }
}
impl DefaultEndianExprIsBe_Doc_MainObj_SubMainObj {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
