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

public class DefaultEndianExprInherited extends KaitaiStruct.ReadWrite {
    public static DefaultEndianExprInherited fromFile(String fileName) throws IOException {
        return new DefaultEndianExprInherited(new ByteBufferKaitaiStream(fileName));
    }
    public DefaultEndianExprInherited() {
        this(null, null, null);
    }

    public DefaultEndianExprInherited(KaitaiStream _io) {
        this(_io, null, null);
    }

    public DefaultEndianExprInherited(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public DefaultEndianExprInherited(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, DefaultEndianExprInherited _root) {
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

        public Doc(KaitaiStream _io, DefaultEndianExprInherited _parent) {
            this(_io, _parent, null);
        }

        public Doc(KaitaiStream _io, DefaultEndianExprInherited _parent, DefaultEndianExprInherited _root) {
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

            public MainObj(KaitaiStream _io, DefaultEndianExprInherited.Doc _parent) {
                this(_io, _parent, null);
            }

            public MainObj(KaitaiStream _io, DefaultEndianExprInherited.Doc _parent, DefaultEndianExprInherited _root) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
            }
            public void _read() {
                {
                    byte[] on = _parent().indicator();
                    if (Arrays.equals(on, new byte[] { 73, 73 })) {
                        this._is_le = true;
                    }
                    else {
                        this._is_le = false;
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
                this.insides = new SubObj(this._io, this, _root, _is_le);
                this.insides._read();
                _dirty = false;
            }
            private void _readBE() {
                this.insides = new SubObj(this._io, this, _root, _is_le);
                this.insides._read();
                _dirty = false;
            }

            public void _fetchInstances() {
                this.insides._fetchInstances();
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
                this.insides._write_Seq(this._io);
            }

            private void _write_SeqBE() {
                this.insides._write_Seq(this._io);
            }

            public void _check() {
                if (!Objects.equals(this.insides._root(), _root()))
                    throw new ConsistencyError("insides", _root(), this.insides._root());
                if (!Objects.equals(this.insides._parent(), this))
                    throw new ConsistencyError("insides", this, this.insides._parent());
                _dirty = false;
            }
            public static class SubObj extends KaitaiStruct.ReadWrite {
                private Boolean _is_le;

                public SubObj(KaitaiStream _io, DefaultEndianExprInherited.Doc.MainObj _parent, DefaultEndianExprInherited _root, boolean _is_le) {
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
                    this.someInt = this._io.readU4le();
                    this.more = new SubsubObj(this._io, this, _root, _is_le);
                    this.more._read();
                    _dirty = false;
                }
                private void _readBE() {
                    this.someInt = this._io.readU4be();
                    this.more = new SubsubObj(this._io, this, _root, _is_le);
                    this.more._read();
                    _dirty = false;
                }

                public void _fetchInstances() {
                    this.more._fetchInstances();
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
                    this._io.writeU4le(this.someInt);
                    this.more._write_Seq(this._io);
                }

                private void _write_SeqBE() {
                    this._io.writeU4be(this.someInt);
                    this.more._write_Seq(this._io);
                }

                public void _check() {
                    if (!Objects.equals(this.more._root(), _root()))
                        throw new ConsistencyError("more", _root(), this.more._root());
                    if (!Objects.equals(this.more._parent(), this))
                        throw new ConsistencyError("more", this, this.more._parent());
                    _dirty = false;
                }
                public static class SubsubObj extends KaitaiStruct.ReadWrite {
                    private Boolean _is_le;

                    public SubsubObj(KaitaiStream _io, DefaultEndianExprInherited.Doc.MainObj.SubObj _parent, DefaultEndianExprInherited _root, boolean _is_le) {
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
                        this.someInt1 = this._io.readU2le();
                        this.someInt2 = this._io.readU2le();
                        _dirty = false;
                    }
                    private void _readBE() {
                        this.someInt1 = this._io.readU2be();
                        this.someInt2 = this._io.readU2be();
                        _dirty = false;
                    }

                    public void _fetchInstances() {
                        someInst();
                        if (this.someInst != null) {
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
                        _shouldWriteSomeInst = _enabledSomeInst;
                        this._io.writeU2le(this.someInt1);
                        this._io.writeU2le(this.someInt2);
                    }

                    private void _write_SeqBE() {
                        _shouldWriteSomeInst = _enabledSomeInst;
                        this._io.writeU2be(this.someInt1);
                        this._io.writeU2be(this.someInt2);
                    }

                    public void _check() {
                        if (_enabledSomeInst) {
                        }
                        _dirty = false;
                    }
                    public Long someInst() {
                        if (_shouldWriteSomeInst)
                            _writeSomeInst();
                        if (this.someInst != null)
                            return this.someInst;
                        if (!_enabledSomeInst)
                            return null;
                        long _pos = this._io.pos();
                        this._io.seek(2);
                        if (_is_le) {
                            this.someInst = this._io.readU4le();
                        } else {
                            this.someInst = this._io.readU4be();
                        }
                        this._io.seek(_pos);
                        return this.someInst;
                    }
                    public void setSomeInst(long _v) { _dirty = true; someInst = _v; }
                    public void setSomeInst_Enabled(boolean _v) { _dirty = true; _enabledSomeInst = _v; }

                    private void _writeSomeInst() {
                        _shouldWriteSomeInst = false;
                        long _pos = this._io.pos();
                        this._io.seek(2);
                        if (_is_le) {
                            this._io.writeU4le(this.someInst);
                        } else {
                            this._io.writeU4be(this.someInst);
                        }
                        this._io.seek(_pos);
                    }
                    public int someInt1() { return someInt1; }
                    public void setSomeInt1(int _v) { _dirty = true; someInt1 = _v; }
                    public int someInt2() { return someInt2; }
                    public void setSomeInt2(int _v) { _dirty = true; someInt2 = _v; }
                    public DefaultEndianExprInherited _root() { return _root; }
                    public void set_root(DefaultEndianExprInherited _v) { _dirty = true; _root = _v; }
                    public DefaultEndianExprInherited.Doc.MainObj.SubObj _parent() { return _parent; }
                    public void set_parent(DefaultEndianExprInherited.Doc.MainObj.SubObj _v) { _dirty = true; _parent = _v; }
                    private Long someInst;
                    private boolean _shouldWriteSomeInst = false;
                    private boolean _enabledSomeInst = true;
                    private int someInt1;
                    private int someInt2;
                    private DefaultEndianExprInherited _root;
                    private DefaultEndianExprInherited.Doc.MainObj.SubObj _parent;
                }
                public long someInt() { return someInt; }
                public void setSomeInt(long _v) { _dirty = true; someInt = _v; }
                public SubsubObj more() { return more; }
                public void setMore(SubsubObj _v) { _dirty = true; more = _v; }
                public DefaultEndianExprInherited _root() { return _root; }
                public void set_root(DefaultEndianExprInherited _v) { _dirty = true; _root = _v; }
                public DefaultEndianExprInherited.Doc.MainObj _parent() { return _parent; }
                public void set_parent(DefaultEndianExprInherited.Doc.MainObj _v) { _dirty = true; _parent = _v; }
                private long someInt;
                private SubsubObj more;
                private DefaultEndianExprInherited _root;
                private DefaultEndianExprInherited.Doc.MainObj _parent;
            }
            public SubObj insides() { return insides; }
            public void setInsides(SubObj _v) { _dirty = true; insides = _v; }
            public DefaultEndianExprInherited _root() { return _root; }
            public void set_root(DefaultEndianExprInherited _v) { _dirty = true; _root = _v; }
            public DefaultEndianExprInherited.Doc _parent() { return _parent; }
            public void set_parent(DefaultEndianExprInherited.Doc _v) { _dirty = true; _parent = _v; }
            private SubObj insides;
            private DefaultEndianExprInherited _root;
            private DefaultEndianExprInherited.Doc _parent;
        }
        public byte[] indicator() { return indicator; }
        public void setIndicator(byte[] _v) { _dirty = true; indicator = _v; }
        public MainObj main() { return main; }
        public void setMain(MainObj _v) { _dirty = true; main = _v; }
        public DefaultEndianExprInherited _root() { return _root; }
        public void set_root(DefaultEndianExprInherited _v) { _dirty = true; _root = _v; }
        public DefaultEndianExprInherited _parent() { return _parent; }
        public void set_parent(DefaultEndianExprInherited _v) { _dirty = true; _parent = _v; }
        private byte[] indicator;
        private MainObj main;
        private DefaultEndianExprInherited _root;
        private DefaultEndianExprInherited _parent;
    }
    public List<Doc> docs() { return docs; }
    public void setDocs(List<Doc> _v) { _dirty = true; docs = _v; }
    public DefaultEndianExprInherited _root() { return _root; }
    public void set_root(DefaultEndianExprInherited _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    private List<Doc> docs;
    private DefaultEndianExprInherited _root;
    private KaitaiStruct.ReadWrite _parent;
}
