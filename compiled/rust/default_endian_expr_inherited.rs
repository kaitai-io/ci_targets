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
pub struct DefaultEndianExprInherited {
    pub _root: SharedType<DefaultEndianExprInherited>,
    pub _parent: SharedType<DefaultEndianExprInherited>,
    pub _self: SharedType<Self>,
    docs: RefCell<Vec<OptRc<DefaultEndianExprInherited_Doc>>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for DefaultEndianExprInherited {
    type Root = DefaultEndianExprInherited;
    type Parent = DefaultEndianExprInherited;

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
                let t = Self::read_into::<_, DefaultEndianExprInherited_Doc>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                self_rc.docs.borrow_mut().push(t);
                _i += 1;
            }
        }
        Ok(())
    }
}
impl DefaultEndianExprInherited {
}
impl DefaultEndianExprInherited {
    pub fn docs(&self) -> Ref<'_, Vec<OptRc<DefaultEndianExprInherited_Doc>>> {
        self.docs.borrow()
    }
}
impl DefaultEndianExprInherited {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct DefaultEndianExprInherited_Doc {
    pub _root: SharedType<DefaultEndianExprInherited>,
    pub _parent: SharedType<DefaultEndianExprInherited>,
    pub _self: SharedType<Self>,
    indicator: RefCell<Vec<u8>>,
    main: RefCell<OptRc<DefaultEndianExprInherited_Doc_MainObj>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for DefaultEndianExprInherited_Doc {
    type Root = DefaultEndianExprInherited;
    type Parent = DefaultEndianExprInherited;

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
        let t = Self::read_into::<_, DefaultEndianExprInherited_Doc_MainObj>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.main.borrow_mut() = t;
        Ok(())
    }
}
impl DefaultEndianExprInherited_Doc {
}
impl DefaultEndianExprInherited_Doc {
    pub fn indicator(&self) -> Ref<'_, Vec<u8>> {
        self.indicator.borrow()
    }
}
impl DefaultEndianExprInherited_Doc {
    pub fn main(&self) -> Ref<'_, OptRc<DefaultEndianExprInherited_Doc_MainObj>> {
        self.main.borrow()
    }
}
impl DefaultEndianExprInherited_Doc {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct DefaultEndianExprInherited_Doc_MainObj {
    pub _root: SharedType<DefaultEndianExprInherited>,
    pub _parent: SharedType<DefaultEndianExprInherited_Doc>,
    pub _self: SharedType<Self>,
    insides: RefCell<OptRc<DefaultEndianExprInherited_Doc_MainObj_SubObj>>,
    _io: RefCell<BytesReader>,
    _is_le: RefCell<i32>,
}
impl KStruct for DefaultEndianExprInherited_Doc_MainObj {
    type Root = DefaultEndianExprInherited;
    type Parent = DefaultEndianExprInherited_Doc;

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
            if *on == vec![0x49u8, 0x49u8] {
                *self_rc._is_le.borrow_mut() = (1) as i32;
            }
            else {
                *self_rc._is_le.borrow_mut() = (2) as i32;
            }
        }
        if *self_rc._is_le.borrow() == 0 {
            return Err(KError::UndecidedEndianness { src_path: "/types/doc/types/main_obj".to_string() });
        }
        let f = |t : &mut DefaultEndianExprInherited_Doc_MainObj_SubObj| Ok(t.set_endian(*self_rc._is_le.borrow()));
        let t = Self::read_into_with_init::<_, DefaultEndianExprInherited_Doc_MainObj_SubObj>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()), &f)?.into();
        *self_rc.insides.borrow_mut() = t;
        Ok(())
    }
}
impl DefaultEndianExprInherited_Doc_MainObj {
    pub fn set_endian(&mut self, _is_le: i32) {
        *self._is_le.borrow_mut() = _is_le;
    }
}
impl DefaultEndianExprInherited_Doc_MainObj {
}
impl DefaultEndianExprInherited_Doc_MainObj {
    pub fn insides(&self) -> Ref<'_, OptRc<DefaultEndianExprInherited_Doc_MainObj_SubObj>> {
        self.insides.borrow()
    }
}
impl DefaultEndianExprInherited_Doc_MainObj {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct DefaultEndianExprInherited_Doc_MainObj_SubObj {
    pub _root: SharedType<DefaultEndianExprInherited>,
    pub _parent: SharedType<DefaultEndianExprInherited_Doc_MainObj>,
    pub _self: SharedType<Self>,
    some_int: RefCell<u32>,
    more: RefCell<OptRc<DefaultEndianExprInherited_Doc_MainObj_SubObj_SubsubObj>>,
    _io: RefCell<BytesReader>,
    _is_le: RefCell<i32>,
}
impl KStruct for DefaultEndianExprInherited_Doc_MainObj_SubObj {
    type Root = DefaultEndianExprInherited;
    type Parent = DefaultEndianExprInherited_Doc_MainObj;

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
        *self_rc.some_int.borrow_mut() = if *self_rc._is_le.borrow() == 1 { _io.read_u4le()?.into() } else { _io.read_u4be()?.into() };
        let f = |t : &mut DefaultEndianExprInherited_Doc_MainObj_SubObj_SubsubObj| Ok(t.set_endian(*self_rc._is_le.borrow()));
        let t = Self::read_into_with_init::<_, DefaultEndianExprInherited_Doc_MainObj_SubObj_SubsubObj>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()), &f)?.into();
        *self_rc.more.borrow_mut() = t;
        Ok(())
    }
}
impl DefaultEndianExprInherited_Doc_MainObj_SubObj {
    pub fn set_endian(&mut self, _is_le: i32) {
        *self._is_le.borrow_mut() = _is_le;
    }
}
impl DefaultEndianExprInherited_Doc_MainObj_SubObj {
}
impl DefaultEndianExprInherited_Doc_MainObj_SubObj {
    pub fn some_int(&self) -> Ref<'_, u32> {
        self.some_int.borrow()
    }
}
impl DefaultEndianExprInherited_Doc_MainObj_SubObj {
    pub fn more(&self) -> Ref<'_, OptRc<DefaultEndianExprInherited_Doc_MainObj_SubObj_SubsubObj>> {
        self.more.borrow()
    }
}
impl DefaultEndianExprInherited_Doc_MainObj_SubObj {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct DefaultEndianExprInherited_Doc_MainObj_SubObj_SubsubObj {
    pub _root: SharedType<DefaultEndianExprInherited>,
    pub _parent: SharedType<DefaultEndianExprInherited_Doc_MainObj_SubObj>,
    pub _self: SharedType<Self>,
    some_int1: RefCell<u16>,
    some_int2: RefCell<u16>,
    _io: RefCell<BytesReader>,
    f_some_inst: Cell<bool>,
    some_inst: RefCell<u32>,
    _is_le: RefCell<i32>,
}
impl KStruct for DefaultEndianExprInherited_Doc_MainObj_SubObj_SubsubObj {
    type Root = DefaultEndianExprInherited;
    type Parent = DefaultEndianExprInherited_Doc_MainObj_SubObj;

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
        *self_rc.some_int1.borrow_mut() = if *self_rc._is_le.borrow() == 1 { _io.read_u2le()?.into() } else { _io.read_u2be()?.into() };
        *self_rc.some_int2.borrow_mut() = if *self_rc._is_le.borrow() == 1 { _io.read_u2le()?.into() } else { _io.read_u2be()?.into() };
        Ok(())
    }
}
impl DefaultEndianExprInherited_Doc_MainObj_SubObj_SubsubObj {
    pub fn set_endian(&mut self, _is_le: i32) {
        *self._is_le.borrow_mut() = _is_le;
    }
}
impl DefaultEndianExprInherited_Doc_MainObj_SubObj_SubsubObj {
    pub fn some_inst(
        &self
    ) -> KResult<Ref<'_, u32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_some_inst.get() {
            return Ok(self.some_inst.borrow());
        }
        self.f_some_inst.set(true);
        let _pos = _io.pos();
        _io.seek(2 as usize)?;
        *self.some_inst.borrow_mut() = if *self._is_le.borrow() == 1 { _io.read_u4le()?.into() } else { _io.read_u4be()?.into() };
        _io.seek(_pos)?;
        Ok(self.some_inst.borrow())
    }
}
impl DefaultEndianExprInherited_Doc_MainObj_SubObj_SubsubObj {
    pub fn some_int1(&self) -> Ref<'_, u16> {
        self.some_int1.borrow()
    }
}
impl DefaultEndianExprInherited_Doc_MainObj_SubObj_SubsubObj {
    pub fn some_int2(&self) -> Ref<'_, u16> {
        self.some_int2.borrow()
    }
}
impl DefaultEndianExprInherited_Doc_MainObj_SubObj_SubsubObj {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
