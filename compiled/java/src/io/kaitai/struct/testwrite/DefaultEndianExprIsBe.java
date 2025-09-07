// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import io.kaitai.struct.ConsistencyError;
import java.util.Objects;
import java.util.Arrays;
import java.util.List;

public class DefaultEndianExprIsBe extends KaitaiStruct.ReadWrite {
    public static DefaultEndianExprIsBe fromFile(String fileName) throws IOException {
        return new DefaultEndianExprIsBe(new ByteBufferKaitaiStream(fileName));
    }
    public DefaultEndianExprIsBe() {
        this(null, null, null);
    }

    public DefaultEndianExprIsBe(KaitaiStream _io) {
        this(_io, null, null);
    }

    public DefaultEndianExprIsBe(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public DefaultEndianExprIsBe(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, DefaultEndianExprIsBe _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.docs = new ArrayList<Doc>();
        {
            int i = 0;
            while (!this._io.isEof()) {
                Doc _t_docs = new Doc(this._io, this, _root);
                try {
                    _t_docs._read();
                } finally {
                    this.docs.add(_t_docs);
                }
                i++;
            }
        }
        _dirty = false;
    }

    public void _fetchInstances() {
        for (int i = 0; i < this.docs.size(); i++) {
            this.docs.get(((Number) (i)).intValue())._fetchInstances();
        }
    }

    public void _write_Seq() {
        _assertNotDirty();
        for (int i = 0; i < this.docs.size(); i++) {
            if (this._io.isEof())
                throw new ConsistencyError("docs", 0, this._io.size() - this._io.pos());
            this.docs.get(((Number) (i)).intValue())._write_Seq(this._io);
        }
        if (!(this._io.isEof()))
            throw new ConsistencyError("docs", 0, this._io.size() - this._io.pos());
    }

    public void _check() {
        for (int i = 0; i < this.docs.size(); i++) {
            if (!Objects.equals(this.docs.get(((Number) (i)).intValue())._root(), _root()))
                throw new ConsistencyError("docs", _root(), this.docs.get(((Number) (i)).intValue())._root());
            if (!Objects.equals(this.docs.get(((Number) (i)).intValue())._parent(), this))
                throw new ConsistencyError("docs", this, this.docs.get(((Number) (i)).intValue())._parent());
        }
        _dirty = false;
    }
    public static class Doc extends KaitaiStruct.ReadWrite {
        public static Doc fromFile(String fileName) throws IOException {
            return new Doc(new ByteBufferKaitaiStream(fileName));
        }
        public Doc() {
            this(null, null, null);
        }

        public Doc(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Doc(KaitaiStream _io, DefaultEndianExprIsBe _parent) {
            this(_io, _parent, null);
        }

        public Doc(KaitaiStream _io, DefaultEndianExprIsBe _parent, DefaultEndianExprIsBe _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.indicator = this._io.readBytes(2);
            this.main = new MainObj(this._io, this, _root);
            this.main._read();
            _dirty = false;
        }

        public void _fetchInstances() {
            this.main._fetchInstances();
        }

        public void _write_Seq() {
            _assertNotDirty();
            this._io.writeBytes(this.indicator);
            this.main._write_Seq(this._io);
        }

        public void _check() {
            if (this.indicator.length != 2)
                throw new ConsistencyError("indicator", 2, this.indicator.length);
            if (!Objects.equals(this.main._root(), _root()))
                throw new ConsistencyError("main", _root(), this.main._root());
            if (!Objects.equals(this.main._parent(), this))
                throw new ConsistencyError("main", this, this.main._parent());
            _dirty = false;
        }
        public static class MainObj extends KaitaiStruct.ReadWrite {
            public static MainObj fromFile(String fileName) throws IOException {
                return new MainObj(new ByteBufferKaitaiStream(fileName));
            }
            private Boolean _is_le;
            public MainObj() {
                this(null, null, null);
            }

            public MainObj(KaitaiStream _io) {
                this(_io, null, null);
            }

            public MainObj(KaitaiStream _io, DefaultEndianExprIsBe.Doc _parent) {
                this(_io, _parent, null);
            }

            public MainObj(KaitaiStream _io, DefaultEndianExprIsBe.Doc _parent, DefaultEndianExprIsBe _root) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
            }
            public void _read() {
                {
                    byte[] on = _parent().indicator();
                    if (Arrays.equals(on, new byte[] { 77, 77 })) {
                        this._is_le = false;
                    }
                    else {
                        this._is_le = true;
                    }
                }

                if (_is_le == null) {
                    throw new KaitaiStream.UndecidedEndiannessError();
                } else if (_is_le) {
                    _readLE();
                } else {
                    _readBE();
                }
                _dirty = false;
            }
            private void _readLE() {
                this.someInt = this._io.readU4le();
                this.someIntBe = this._io.readU2be();
                this.someIntLe = this._io.readU2le();
                _dirty = false;
            }
            private void _readBE() {
                this.someInt = this._io.readU4be();
                this.someIntBe = this._io.readU2be();
                this.someIntLe = this._io.readU2le();
                _dirty = false;
            }

            public void _fetchInstances() {
                instInt();
                if (this.instInt != null) {
                }
                instSub();
                if (this.instSub != null) {
                    this.instSub._fetchInstances();
                }
            }

            public void _write_Seq() {
                _assertNotDirty();

                if (_is_le == null) {
                    throw new KaitaiStream.UndecidedEndiannessError();
                } else if (_is_le) {
                    _write_SeqLE();
                } else {
                    _write_SeqBE();
                }
            }

            private void _write_SeqLE() {
                _shouldWriteInstInt = _enabledInstInt;
                _shouldWriteInstSub = _enabledInstSub;
                this._io.writeU4le(this.someInt);
                this._io.writeU2be(this.someIntBe);
                this._io.writeU2le(this.someIntLe);
            }

            private void _write_SeqBE() {
                _shouldWriteInstInt = _enabledInstInt;
                _shouldWriteInstSub = _enabledInstSub;
                this._io.writeU4be(this.someInt);
                this._io.writeU2be(this.someIntBe);
                this._io.writeU2le(this.someIntLe);
            }

            public void _check() {
                if (_enabledInstInt) {
                }
                if (_enabledInstSub) {
                    if (!Objects.equals(this.instSub._root(), _root()))
                        throw new ConsistencyError("inst_sub", _root(), this.instSub._root());
                    if (!Objects.equals(this.instSub._parent(), this))
                        throw new ConsistencyError("inst_sub", this, this.instSub._parent());
                }
                _dirty = false;
            }
            public static class SubMainObj extends KaitaiStruct.ReadWrite {
                private Boolean _is_le;

                public SubMainObj(KaitaiStream _io, DefaultEndianExprIsBe.Doc.MainObj _parent, DefaultEndianExprIsBe _root, boolean _is_le) {
                    super(_io);
                    this._parent = _parent;
                    this._root = _root;
                    this._is_le = _is_le;
                }
                public void _read() {

                    if (_is_le == null) {
                        throw new KaitaiStream.UndecidedEndiannessError();
                    } else if (_is_le) {
                        _readLE();
                    } else {
                        _readBE();
                    }
                    _dirty = false;
                }
                private void _readLE() {
                    this.foo = this._io.readU4le();
                    _dirty = false;
                }
                private void _readBE() {
                    this.foo = this._io.readU4be();
                    _dirty = false;
                }

                public void _fetchInstances() {
                }

                public void _write_Seq() {
                    _assertNotDirty();

                    if (_is_le == null) {
                        throw new KaitaiStream.UndecidedEndiannessError();
                    } else if (_is_le) {
                        _write_SeqLE();
                    } else {
                        _write_SeqBE();
                    }
                }

                private void _write_SeqLE() {
                    this._io.writeU4le(this.foo);
                }

                private void _write_SeqBE() {
                    this._io.writeU4be(this.foo);
                }

                public void _check() {
                    _dirty = false;
                }
                private long foo;
                private DefaultEndianExprIsBe _root;
                private DefaultEndianExprIsBe.Doc.MainObj _parent;
                public long foo() { return foo; }
                public void setFoo(long _v) { _dirty = true; foo = _v; }
                public DefaultEndianExprIsBe _root() { return _root; }
                public void set_root(DefaultEndianExprIsBe _v) { _dirty = true; _root = _v; }
                public DefaultEndianExprIsBe.Doc.MainObj _parent() { return _parent; }
                public void set_parent(DefaultEndianExprIsBe.Doc.MainObj _v) { _dirty = true; _parent = _v; }
            }
            private Long instInt;
            private boolean _shouldWriteInstInt = false;
            private boolean _enabledInstInt = true;
            public Long instInt() {
                if (_shouldWriteInstInt)
                    _writeInstInt();
                if (this.instInt != null)
                    return this.instInt;
                if (!_enabledInstInt)
                    return null;
                long _pos = this._io.pos();
                this._io.seek(2);
                if (_is_le) {
                    this.instInt = this._io.readU4le();
                } else {
                    this.instInt = this._io.readU4be();
                }
                this._io.seek(_pos);
                return this.instInt;
            }
            public void setInstInt(long _v) { _dirty = true; instInt = _v; }
            public void setInstInt_Enabled(boolean _v) { _dirty = true; _enabledInstInt = _v; }

            private void _writeInstInt() {
                _shouldWriteInstInt = false;
                long _pos = this._io.pos();
                this._io.seek(2);
                if (_is_le) {
                    this._io.writeU4le(this.instInt);
                } else {
                    this._io.writeU4be(this.instInt);
                }
                this._io.seek(_pos);
            }
            private SubMainObj instSub;
            private boolean _shouldWriteInstSub = false;
            private boolean _enabledInstSub = true;
            public SubMainObj instSub() {
                if (_shouldWriteInstSub)
                    _writeInstSub();
                if (this.instSub != null)
                    return this.instSub;
                if (!_enabledInstSub)
                    return null;
                long _pos = this._io.pos();
                this._io.seek(2);
                if (_is_le) {
                    this.instSub = new SubMainObj(this._io, this, _root, _is_le);
                    this.instSub._read();
                } else {
                    this.instSub = new SubMainObj(this._io, this, _root, _is_le);
                    this.instSub._read();
                }
                this._io.seek(_pos);
                return this.instSub;
            }
            public void setInstSub(SubMainObj _v) { _dirty = true; instSub = _v; }
            public void setInstSub_Enabled(boolean _v) { _dirty = true; _enabledInstSub = _v; }

            private void _writeInstSub() {
                _shouldWriteInstSub = false;
                long _pos = this._io.pos();
                this._io.seek(2);
                if (_is_le) {
                    this.instSub._write_Seq(this._io);
                } else {
                    this.instSub._write_Seq(this._io);
                }
                this._io.seek(_pos);
            }
            private long someInt;
            private int someIntBe;
            private int someIntLe;
            private DefaultEndianExprIsBe _root;
            private DefaultEndianExprIsBe.Doc _parent;
            public long someInt() { return someInt; }
            public void setSomeInt(long _v) { _dirty = true; someInt = _v; }
            public int someIntBe() { return someIntBe; }
            public void setSomeIntBe(int _v) { _dirty = true; someIntBe = _v; }
            public int someIntLe() { return someIntLe; }
            public void setSomeIntLe(int _v) { _dirty = true; someIntLe = _v; }
            public DefaultEndianExprIsBe _root() { return _root; }
            public void set_root(DefaultEndianExprIsBe _v) { _dirty = true; _root = _v; }
            public DefaultEndianExprIsBe.Doc _parent() { return _parent; }
            public void set_parent(DefaultEndianExprIsBe.Doc _v) { _dirty = true; _parent = _v; }
        }
        private byte[] indicator;
        private MainObj main;
        private DefaultEndianExprIsBe _root;
        private DefaultEndianExprIsBe _parent;
        public byte[] indicator() { return indicator; }
        public void setIndicator(byte[] _v) { _dirty = true; indicator = _v; }
        public MainObj main() { return main; }
        public void setMain(MainObj _v) { _dirty = true; main = _v; }
        public DefaultEndianExprIsBe _root() { return _root; }
        public void set_root(DefaultEndianExprIsBe _v) { _dirty = true; _root = _v; }
        public DefaultEndianExprIsBe _parent() { return _parent; }
        public void set_parent(DefaultEndianExprIsBe _v) { _dirty = true; _parent = _v; }
    }
    private List<Doc> docs;
    private DefaultEndianExprIsBe _root;
    private KaitaiStruct.ReadWrite _parent;
    public List<Doc> docs() { return docs; }
    public void setDocs(List<Doc> _v) { _dirty = true; docs = _v; }
    public DefaultEndianExprIsBe _root() { return _root; }
    public void set_root(DefaultEndianExprIsBe _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
