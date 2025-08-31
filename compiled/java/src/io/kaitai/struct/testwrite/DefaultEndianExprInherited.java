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
    }

    public void _fetchInstances() {
        for (int i = 0; i < this.docs.size(); i++) {
            this.docs.get(((Number) (i)).intValue())._fetchInstances();
        }
    }

    public void _write_Seq() {
        for (int i = 0; i < this.docs.size(); i++) {
            if (this._io.isEof())
                throw new ConsistencyError("docs", this._io.size() - this._io.pos(), 0);
            this.docs.get(((Number) (i)).intValue())._write_Seq(this._io);
        }
        if (!(this._io.isEof()))
            throw new ConsistencyError("docs", this._io.size() - this._io.pos(), 0);
    }

    public void _check() {
        for (int i = 0; i < this.docs.size(); i++) {
            if (!Objects.equals(this.docs.get(((Number) (i)).intValue())._root(), _root()))
                throw new ConsistencyError("docs", this.docs.get(((Number) (i)).intValue())._root(), _root());
            if (!Objects.equals(this.docs.get(((Number) (i)).intValue())._parent(), this))
                throw new ConsistencyError("docs", this.docs.get(((Number) (i)).intValue())._parent(), this);
        }
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
        }

        public void _fetchInstances() {
            this.main._fetchInstances();
        }

        public void _write_Seq() {
            this._io.writeBytes(this.indicator);
            this.main._write_Seq(this._io);
        }

        public void _check() {
            if (this.indicator.length != 2)
                throw new ConsistencyError("indicator", this.indicator.length, 2);
            if (!Objects.equals(this.main._root(), _root()))
                throw new ConsistencyError("main", this.main._root(), _root());
            if (!Objects.equals(this.main._parent(), this))
                throw new ConsistencyError("main", this.main._parent(), this);
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
            }
            private void _readLE() {
                this.insides = new SubObj(this._io, this, _root, _is_le);
                this.insides._read();
            }
            private void _readBE() {
                this.insides = new SubObj(this._io, this, _root, _is_le);
                this.insides._read();
            }

            public void _fetchInstances() {
                this.insides._fetchInstances();
            }

            public void _write_Seq() {

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
                    throw new ConsistencyError("insides", this.insides._root(), _root());
                if (!Objects.equals(this.insides._parent(), this))
                    throw new ConsistencyError("insides", this.insides._parent(), this);
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
                }
                private void _readLE() {
                    this.someInt = this._io.readU4le();
                    this.more = new SubsubObj(this._io, this, _root, _is_le);
                    this.more._read();
                }
                private void _readBE() {
                    this.someInt = this._io.readU4be();
                    this.more = new SubsubObj(this._io, this, _root, _is_le);
                    this.more._read();
                }

                public void _fetchInstances() {
                    this.more._fetchInstances();
                }

                public void _write_Seq() {

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
                        throw new ConsistencyError("more", this.more._root(), _root());
                    if (!Objects.equals(this.more._parent(), this))
                        throw new ConsistencyError("more", this.more._parent(), this);
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
                    }
                    private void _readLE() {
                        this.someInt1 = this._io.readU2le();
                        this.someInt2 = this._io.readU2le();
                    }
                    private void _readBE() {
                        this.someInt1 = this._io.readU2be();
                        this.someInt2 = this._io.readU2be();
                    }

                    public void _fetchInstances() {
                        someInst();
                    }

                    public void _write_Seq() {

                        if (_is_le == null) {
                            throw new KaitaiStream.UndecidedEndiannessError();
                        } else if (_is_le) {
                            _write_SeqLE();
                        } else {
                            _write_SeqBE();
                        }
                    }

                    private void _write_SeqLE() {
                        _writeSomeInst = _toWriteSomeInst;
                        this._io.writeU2le(this.someInt1);
                        this._io.writeU2le(this.someInt2);
                    }

                    private void _write_SeqBE() {
                        _writeSomeInst = _toWriteSomeInst;
                        this._io.writeU2be(this.someInt1);
                        this._io.writeU2be(this.someInt2);
                    }

                    public void _check() {
                    }
                    private Long someInst;
                    private boolean _writeSomeInst = false;
                    private boolean _toWriteSomeInst = true;
                    public Long someInst() {
                        if (_writeSomeInst)
                            _writeSomeInst();
                        if (this.someInst != null)
                            return this.someInst;
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
                    public void setSomeInst(long _v) { someInst = _v; }
                    public void setSomeInst_ToWrite(boolean _v) { _toWriteSomeInst = _v; }

                    public void _writeSomeInst() {
                        _writeSomeInst = false;
                        long _pos = this._io.pos();
                        this._io.seek(2);
                        if (_is_le) {
                            this._io.writeU4le(this.someInst);
                        } else {
                            this._io.writeU4be(this.someInst);
                        }
                        this._io.seek(_pos);
                    }

                    public void _checkSomeInst() {
                    }
                    private int someInt1;
                    private int someInt2;
                    private DefaultEndianExprInherited _root;
                    private DefaultEndianExprInherited.Doc.MainObj.SubObj _parent;
                    public int someInt1() { return someInt1; }
                    public void setSomeInt1(int _v) { someInt1 = _v; }
                    public int someInt2() { return someInt2; }
                    public void setSomeInt2(int _v) { someInt2 = _v; }
                    public DefaultEndianExprInherited _root() { return _root; }
                    public void set_root(DefaultEndianExprInherited _v) { _root = _v; }
                    public DefaultEndianExprInherited.Doc.MainObj.SubObj _parent() { return _parent; }
                    public void set_parent(DefaultEndianExprInherited.Doc.MainObj.SubObj _v) { _parent = _v; }
                }
                private long someInt;
                private SubsubObj more;
                private DefaultEndianExprInherited _root;
                private DefaultEndianExprInherited.Doc.MainObj _parent;
                public long someInt() { return someInt; }
                public void setSomeInt(long _v) { someInt = _v; }
                public SubsubObj more() { return more; }
                public void setMore(SubsubObj _v) { more = _v; }
                public DefaultEndianExprInherited _root() { return _root; }
                public void set_root(DefaultEndianExprInherited _v) { _root = _v; }
                public DefaultEndianExprInherited.Doc.MainObj _parent() { return _parent; }
                public void set_parent(DefaultEndianExprInherited.Doc.MainObj _v) { _parent = _v; }
            }
            private SubObj insides;
            private DefaultEndianExprInherited _root;
            private DefaultEndianExprInherited.Doc _parent;
            public SubObj insides() { return insides; }
            public void setInsides(SubObj _v) { insides = _v; }
            public DefaultEndianExprInherited _root() { return _root; }
            public void set_root(DefaultEndianExprInherited _v) { _root = _v; }
            public DefaultEndianExprInherited.Doc _parent() { return _parent; }
            public void set_parent(DefaultEndianExprInherited.Doc _v) { _parent = _v; }
        }
        private byte[] indicator;
        private MainObj main;
        private DefaultEndianExprInherited _root;
        private DefaultEndianExprInherited _parent;
        public byte[] indicator() { return indicator; }
        public void setIndicator(byte[] _v) { indicator = _v; }
        public MainObj main() { return main; }
        public void setMain(MainObj _v) { main = _v; }
        public DefaultEndianExprInherited _root() { return _root; }
        public void set_root(DefaultEndianExprInherited _v) { _root = _v; }
        public DefaultEndianExprInherited _parent() { return _parent; }
        public void set_parent(DefaultEndianExprInherited _v) { _parent = _v; }
    }
    private List<Doc> docs;
    private DefaultEndianExprInherited _root;
    private KaitaiStruct.ReadWrite _parent;
    public List<Doc> docs() { return docs; }
    public void setDocs(List<Doc> _v) { docs = _v; }
    public DefaultEndianExprInherited _root() { return _root; }
    public void set_root(DefaultEndianExprInherited _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
}
