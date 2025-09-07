// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import io.kaitai.struct.ConsistencyError;
import java.util.Objects;

public class ExprIoTernary extends KaitaiStruct.ReadWrite {
    public static ExprIoTernary fromFile(String fileName) throws IOException {
        return new ExprIoTernary(new ByteBufferKaitaiStream(fileName));
    }
    public ExprIoTernary() {
        this(null, null, null);
    }

    public ExprIoTernary(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ExprIoTernary(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public ExprIoTernary(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ExprIoTernary _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.flag = this._io.readU1();
        this._raw_obj1 = this._io.readBytes(4);
        KaitaiStream _io__raw_obj1 = new ByteBufferKaitaiStream(this._raw_obj1);
        this.obj1 = new One(_io__raw_obj1, this, _root);
        this.obj1._read();
        this._raw_obj2 = this._io.readBytes(8);
        KaitaiStream _io__raw_obj2 = new ByteBufferKaitaiStream(this._raw_obj2);
        this.obj2 = new Two(_io__raw_obj2, this, _root);
        this.obj2._read();
        _dirty = false;
    }

    public void _fetchInstances() {
        this.obj1._fetchInstances();
        this.obj2._fetchInstances();
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._io.writeU1(this.flag);
        final KaitaiStream _io__raw_obj1 = new ByteBufferKaitaiStream(4);
        this._io.addChildStream(_io__raw_obj1);
        {
            long _pos2 = this._io.pos();
            this._io.seek(this._io.pos() + (4));
            final ExprIoTernary _this = this;
            _io__raw_obj1.setWriteBackHandler(new KaitaiStream.WriteBackHandler(_pos2) {
                @Override
                protected void write(KaitaiStream parent) {
                    _this._raw_obj1 = _io__raw_obj1.toByteArray();
                    if (_this._raw_obj1.length != 4)
                        throw new ConsistencyError("raw(obj1)", 4, _this._raw_obj1.length);
                    parent.writeBytes(_this._raw_obj1);
                }
            });
        }
        this.obj1._write_Seq(_io__raw_obj1);
        final KaitaiStream _io__raw_obj2 = new ByteBufferKaitaiStream(8);
        this._io.addChildStream(_io__raw_obj2);
        {
            long _pos2 = this._io.pos();
            this._io.seek(this._io.pos() + (8));
            final ExprIoTernary _this = this;
            _io__raw_obj2.setWriteBackHandler(new KaitaiStream.WriteBackHandler(_pos2) {
                @Override
                protected void write(KaitaiStream parent) {
                    _this._raw_obj2 = _io__raw_obj2.toByteArray();
                    if (_this._raw_obj2.length != 8)
                        throw new ConsistencyError("raw(obj2)", 8, _this._raw_obj2.length);
                    parent.writeBytes(_this._raw_obj2);
                }
            });
        }
        this.obj2._write_Seq(_io__raw_obj2);
    }

    public void _check() {
        if (!Objects.equals(this.obj1._root(), _root()))
            throw new ConsistencyError("obj1", _root(), this.obj1._root());
        if (!Objects.equals(this.obj1._parent(), this))
            throw new ConsistencyError("obj1", this, this.obj1._parent());
        if (!Objects.equals(this.obj2._root(), _root()))
            throw new ConsistencyError("obj2", _root(), this.obj2._root());
        if (!Objects.equals(this.obj2._parent(), this))
            throw new ConsistencyError("obj2", this, this.obj2._parent());
        _dirty = false;
    }
    public static class One extends KaitaiStruct.ReadWrite {
        public static One fromFile(String fileName) throws IOException {
            return new One(new ByteBufferKaitaiStream(fileName));
        }
        public One() {
            this(null, null, null);
        }

        public One(KaitaiStream _io) {
            this(_io, null, null);
        }

        public One(KaitaiStream _io, ExprIoTernary _parent) {
            this(_io, _parent, null);
        }

        public One(KaitaiStream _io, ExprIoTernary _parent, ExprIoTernary _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.one = this._io.readU1();
            _dirty = false;
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            _assertNotDirty();
            this._io.writeU1(this.one);
        }

        public void _check() {
            _dirty = false;
        }
        private int one;
        private ExprIoTernary _root;
        private ExprIoTernary _parent;
        public int one() { return one; }
        public void setOne(int _v) { _dirty = true; one = _v; }
        public ExprIoTernary _root() { return _root; }
        public void set_root(ExprIoTernary _v) { _dirty = true; _root = _v; }
        public ExprIoTernary _parent() { return _parent; }
        public void set_parent(ExprIoTernary _v) { _dirty = true; _parent = _v; }
    }
    public static class Two extends KaitaiStruct.ReadWrite {
        public static Two fromFile(String fileName) throws IOException {
            return new Two(new ByteBufferKaitaiStream(fileName));
        }
        public Two() {
            this(null, null, null);
        }

        public Two(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Two(KaitaiStream _io, ExprIoTernary _parent) {
            this(_io, _parent, null);
        }

        public Two(KaitaiStream _io, ExprIoTernary _parent, ExprIoTernary _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.two = this._io.readU1();
            _dirty = false;
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            _assertNotDirty();
            this._io.writeU1(this.two);
        }

        public void _check() {
            _dirty = false;
        }
        private int two;
        private ExprIoTernary _root;
        private ExprIoTernary _parent;
        public int two() { return two; }
        public void setTwo(int _v) { _dirty = true; two = _v; }
        public ExprIoTernary _root() { return _root; }
        public void set_root(ExprIoTernary _v) { _dirty = true; _root = _v; }
        public ExprIoTernary _parent() { return _parent; }
        public void set_parent(ExprIoTernary _v) { _dirty = true; _parent = _v; }
    }
    private KaitaiStream oneOrTwoIo;
    public KaitaiStream oneOrTwoIo() {
        if (this.oneOrTwoIo != null)
            return this.oneOrTwoIo;
        this.oneOrTwoIo = (flag() == 64 ? obj1() : obj2())._io();
        return this.oneOrTwoIo;
    }
    public void _invalidateOneOrTwoIo() { this.oneOrTwoIo = null; }
    private Integer oneOrTwoIoSize1;
    public Integer oneOrTwoIoSize1() {
        if (this.oneOrTwoIoSize1 != null)
            return this.oneOrTwoIoSize1;
        this.oneOrTwoIoSize1 = ((Number) ((flag() == 64 ? obj1() : obj2())._io().size())).intValue();
        return this.oneOrTwoIoSize1;
    }
    public void _invalidateOneOrTwoIoSize1() { this.oneOrTwoIoSize1 = null; }
    private Integer oneOrTwoIoSize2;
    public Integer oneOrTwoIoSize2() {
        if (this.oneOrTwoIoSize2 != null)
            return this.oneOrTwoIoSize2;
        this.oneOrTwoIoSize2 = ((Number) (oneOrTwoIo().size())).intValue();
        return this.oneOrTwoIoSize2;
    }
    public void _invalidateOneOrTwoIoSize2() { this.oneOrTwoIoSize2 = null; }
    private Integer oneOrTwoIoSizeAdd3;
    public Integer oneOrTwoIoSizeAdd3() {
        if (this.oneOrTwoIoSizeAdd3 != null)
            return this.oneOrTwoIoSizeAdd3;
        this.oneOrTwoIoSizeAdd3 = ((Number) ((flag() == 64 ? obj1() : obj2())._io().size() + 3)).intValue();
        return this.oneOrTwoIoSizeAdd3;
    }
    public void _invalidateOneOrTwoIoSizeAdd3() { this.oneOrTwoIoSizeAdd3 = null; }
    private KaitaiStruct.ReadWrite oneOrTwoObj;
    public KaitaiStruct.ReadWrite oneOrTwoObj() {
        if (this.oneOrTwoObj != null)
            return this.oneOrTwoObj;
        this.oneOrTwoObj = (flag() == 64 ? obj1() : obj2());
        return this.oneOrTwoObj;
    }
    public void _invalidateOneOrTwoObj() { this.oneOrTwoObj = null; }
    private int flag;
    private One obj1;
    private Two obj2;
    private ExprIoTernary _root;
    private KaitaiStruct.ReadWrite _parent;
    private byte[] _raw_obj1;
    private byte[] _raw_obj2;
    public int flag() { return flag; }
    public void setFlag(int _v) { _dirty = true; flag = _v; }
    public One obj1() { return obj1; }
    public void setObj1(One _v) { _dirty = true; obj1 = _v; }
    public Two obj2() { return obj2; }
    public void setObj2(Two _v) { _dirty = true; obj2 = _v; }
    public ExprIoTernary _root() { return _root; }
    public void set_root(ExprIoTernary _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    public byte[] _raw_obj1() { return _raw_obj1; }
    public void set_raw_Obj1(byte[] _v) { _dirty = true; _raw_obj1 = _v; }
    public byte[] _raw_obj2() { return _raw_obj2; }
    public void set_raw_Obj2(byte[] _v) { _dirty = true; _raw_obj2 = _v; }
}
