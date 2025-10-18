// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.Objects;
import io.kaitai.struct.ConsistencyError;

public class NavParentSwitchCast extends KaitaiStruct.ReadWrite {
    public static NavParentSwitchCast fromFile(String fileName) throws IOException {
        return new NavParentSwitchCast(new ByteBufferKaitaiStream(fileName));
    }
    public NavParentSwitchCast() {
        this(null, null, null);
    }

    public NavParentSwitchCast(KaitaiStream _io) {
        this(_io, null, null);
    }

    public NavParentSwitchCast(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public NavParentSwitchCast(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, NavParentSwitchCast _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.main = new Foo(this._io, this, _root);
        this.main._read();
        _dirty = false;
    }

    public void _fetchInstances() {
        this.main._fetchInstances();
    }

    public void _write_Seq() {
        _assertNotDirty();
        this.main._write_Seq(this._io);
    }

    public void _check() {
        if (!Objects.equals(this.main._root(), _root()))
            throw new ConsistencyError("main", _root(), this.main._root());
        if (!Objects.equals(this.main._parent(), this))
            throw new ConsistencyError("main", this, this.main._parent());
        _dirty = false;
    }
    public static class Foo extends KaitaiStruct.ReadWrite {
        public static Foo fromFile(String fileName) throws IOException {
            return new Foo(new ByteBufferKaitaiStream(fileName));
        }
        public Foo() {
            this(null, null, null);
        }

        public Foo(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Foo(KaitaiStream _io, NavParentSwitchCast _parent) {
            this(_io, _parent, null);
        }

        public Foo(KaitaiStream _io, NavParentSwitchCast _parent, NavParentSwitchCast _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.bufType = this._io.readU1();
            this.flag = this._io.readU1();
            switch (bufType()) {
            case 0: {
                this._raw_buf = this._io.readBytes(4);
                KaitaiStream _io__raw_buf = new ByteBufferKaitaiStream(this._raw_buf);
                this.buf = new Zero(_io__raw_buf, this, _root);
                ((Zero) (this.buf))._read();
                break;
            }
            case 1: {
                this._raw_buf = this._io.readBytes(4);
                KaitaiStream _io__raw_buf = new ByteBufferKaitaiStream(this._raw_buf);
                this.buf = new One(_io__raw_buf, this, _root);
                ((One) (this.buf))._read();
                break;
            }
            default: {
                this.buf = this._io.readBytes(4);
                break;
            }
            }
            _dirty = false;
        }

        public void _fetchInstances() {
            switch (bufType()) {
            case 0: {
                ((Zero) (this.buf))._fetchInstances();
                break;
            }
            case 1: {
                ((One) (this.buf))._fetchInstances();
                break;
            }
            default: {
                break;
            }
            }
        }

        public void _write_Seq() {
            _assertNotDirty();
            this._io.writeU1(this.bufType);
            this._io.writeU1(this.flag);
            switch (bufType()) {
            case 0: {
                final KaitaiStream _io__raw_buf = new ByteBufferKaitaiStream(4);
                this._io.addChildStream(_io__raw_buf);
                {
                    long _pos2 = this._io.pos();
                    this._io.seek(this._io.pos() + (4));
                    final Foo _this = this;
                    _io__raw_buf.setWriteBackHandler(new KaitaiStream.WriteBackHandler(_pos2) {
                        @Override
                        protected void write(KaitaiStream parent) {
                            _this._raw_buf = _io__raw_buf.toByteArray();
                            if (((byte[]) (_this._raw_buf)).length != 4)
                                throw new ConsistencyError("raw(buf)", 4, ((byte[]) (_this._raw_buf)).length);
                            parent.writeBytes(((byte[]) (((byte[]) (_this._raw_buf)))));
                        }
                    });
                }
                ((Zero) (this.buf))._write_Seq(_io__raw_buf);
                break;
            }
            case 1: {
                final KaitaiStream _io__raw_buf = new ByteBufferKaitaiStream(4);
                this._io.addChildStream(_io__raw_buf);
                {
                    long _pos2 = this._io.pos();
                    this._io.seek(this._io.pos() + (4));
                    final Foo _this = this;
                    _io__raw_buf.setWriteBackHandler(new KaitaiStream.WriteBackHandler(_pos2) {
                        @Override
                        protected void write(KaitaiStream parent) {
                            _this._raw_buf = _io__raw_buf.toByteArray();
                            if (((byte[]) (_this._raw_buf)).length != 4)
                                throw new ConsistencyError("raw(buf)", 4, ((byte[]) (_this._raw_buf)).length);
                            parent.writeBytes(((byte[]) (((byte[]) (_this._raw_buf)))));
                        }
                    });
                }
                ((One) (this.buf))._write_Seq(_io__raw_buf);
                break;
            }
            default: {
                this._io.writeBytes(((byte[]) (((byte[]) (this.buf)))));
                break;
            }
            }
        }

        public void _check() {
            switch (bufType()) {
            case 0: {
                if (!Objects.equals(((NavParentSwitchCast.Foo.Zero) (this.buf))._root(), _root()))
                    throw new ConsistencyError("buf", _root(), ((NavParentSwitchCast.Foo.Zero) (this.buf))._root());
                if (!Objects.equals(((NavParentSwitchCast.Foo.Zero) (this.buf))._parent(), this))
                    throw new ConsistencyError("buf", this, ((NavParentSwitchCast.Foo.Zero) (this.buf))._parent());
                break;
            }
            case 1: {
                if (!Objects.equals(((NavParentSwitchCast.Foo.One) (this.buf))._root(), _root()))
                    throw new ConsistencyError("buf", _root(), ((NavParentSwitchCast.Foo.One) (this.buf))._root());
                if (!Objects.equals(((NavParentSwitchCast.Foo.One) (this.buf))._parent(), this))
                    throw new ConsistencyError("buf", this, ((NavParentSwitchCast.Foo.One) (this.buf))._parent());
                break;
            }
            default: {
                if (((byte[]) (this.buf)).length != 4)
                    throw new ConsistencyError("buf", 4, ((byte[]) (this.buf)).length);
                break;
            }
            }
            _dirty = false;
        }
        public static class Common extends KaitaiStruct.ReadWrite {
            public static Common fromFile(String fileName) throws IOException {
                return new Common(new ByteBufferKaitaiStream(fileName));
            }
            public Common() {
                this(null, null, null);
            }

            public Common(KaitaiStream _io) {
                this(_io, null, null);
            }

            public Common(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
                this(_io, _parent, null);
            }

            public Common(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, NavParentSwitchCast _root) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
            }
            public void _read() {
                _dirty = false;
            }

            public void _fetchInstances() {
            }

            public void _write_Seq() {
                _assertNotDirty();
            }

            public void _check() {
                _dirty = false;
            }
            public Integer flag() {
                if (this.flag != null)
                    return this.flag;
                this.flag = ((Number) (((NavParentSwitchCast.Foo) (_parent()._parent())).flag())).intValue();
                return this.flag;
            }
            public void _invalidateFlag() { this.flag = null; }
            public NavParentSwitchCast _root() { return _root; }
            public void set_root(NavParentSwitchCast _v) { _dirty = true; _root = _v; }
            public KaitaiStruct.ReadWrite _parent() { return _parent; }
            public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
            private Integer flag;
            private NavParentSwitchCast _root;
            private KaitaiStruct.ReadWrite _parent;
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

            public One(KaitaiStream _io, NavParentSwitchCast.Foo _parent) {
                this(_io, _parent, null);
            }

            public One(KaitaiStream _io, NavParentSwitchCast.Foo _parent, NavParentSwitchCast _root) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
            }
            public void _read() {
                this.branch = new Common(this._io, this, _root);
                this.branch._read();
                _dirty = false;
            }

            public void _fetchInstances() {
                this.branch._fetchInstances();
            }

            public void _write_Seq() {
                _assertNotDirty();
                this.branch._write_Seq(this._io);
            }

            public void _check() {
                if (!Objects.equals(this.branch._root(), _root()))
                    throw new ConsistencyError("branch", _root(), this.branch._root());
                if (!Objects.equals(this.branch._parent(), this))
                    throw new ConsistencyError("branch", this, this.branch._parent());
                _dirty = false;
            }
            public Common branch() { return branch; }
            public void setBranch(Common _v) { _dirty = true; branch = _v; }
            public NavParentSwitchCast _root() { return _root; }
            public void set_root(NavParentSwitchCast _v) { _dirty = true; _root = _v; }
            public NavParentSwitchCast.Foo _parent() { return _parent; }
            public void set_parent(NavParentSwitchCast.Foo _v) { _dirty = true; _parent = _v; }
            private Common branch;
            private NavParentSwitchCast _root;
            private NavParentSwitchCast.Foo _parent;
        }
        public static class Zero extends KaitaiStruct.ReadWrite {
            public static Zero fromFile(String fileName) throws IOException {
                return new Zero(new ByteBufferKaitaiStream(fileName));
            }
            public Zero() {
                this(null, null, null);
            }

            public Zero(KaitaiStream _io) {
                this(_io, null, null);
            }

            public Zero(KaitaiStream _io, NavParentSwitchCast.Foo _parent) {
                this(_io, _parent, null);
            }

            public Zero(KaitaiStream _io, NavParentSwitchCast.Foo _parent, NavParentSwitchCast _root) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
            }
            public void _read() {
                this.branch = new Common(this._io, this, _root);
                this.branch._read();
                _dirty = false;
            }

            public void _fetchInstances() {
                this.branch._fetchInstances();
            }

            public void _write_Seq() {
                _assertNotDirty();
                this.branch._write_Seq(this._io);
            }

            public void _check() {
                if (!Objects.equals(this.branch._root(), _root()))
                    throw new ConsistencyError("branch", _root(), this.branch._root());
                if (!Objects.equals(this.branch._parent(), this))
                    throw new ConsistencyError("branch", this, this.branch._parent());
                _dirty = false;
            }
            public Common branch() { return branch; }
            public void setBranch(Common _v) { _dirty = true; branch = _v; }
            public NavParentSwitchCast _root() { return _root; }
            public void set_root(NavParentSwitchCast _v) { _dirty = true; _root = _v; }
            public NavParentSwitchCast.Foo _parent() { return _parent; }
            public void set_parent(NavParentSwitchCast.Foo _v) { _dirty = true; _parent = _v; }
            private Common branch;
            private NavParentSwitchCast _root;
            private NavParentSwitchCast.Foo _parent;
        }
        public int bufType() { return bufType; }
        public void setBufType(int _v) { _dirty = true; bufType = _v; }
        public int flag() { return flag; }
        public void setFlag(int _v) { _dirty = true; flag = _v; }
        public Object buf() { return buf; }
        public void setBuf(Object _v) { _dirty = true; buf = _v; }
        public NavParentSwitchCast _root() { return _root; }
        public void set_root(NavParentSwitchCast _v) { _dirty = true; _root = _v; }
        public NavParentSwitchCast _parent() { return _parent; }
        public void set_parent(NavParentSwitchCast _v) { _dirty = true; _parent = _v; }
        public byte[] _raw_buf() { return _raw_buf; }
        public void set_raw_Buf(byte[] _v) { _dirty = true; _raw_buf = _v; }
        private int bufType;
        private int flag;
        private Object buf;
        private NavParentSwitchCast _root;
        private NavParentSwitchCast _parent;
        private byte[] _raw_buf;
    }
    public Foo main() { return main; }
    public void setMain(Foo _v) { _dirty = true; main = _v; }
    public NavParentSwitchCast _root() { return _root; }
    public void set_root(NavParentSwitchCast _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    private Foo main;
    private NavParentSwitchCast _root;
    private KaitaiStruct.ReadWrite _parent;
}
