// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;

public class DefaultEndianExprInherited extends KaitaiStruct {
    public static DefaultEndianExprInherited fromFile(String fileName) throws IOException {
        return new DefaultEndianExprInherited(new KaitaiStream(fileName));
    }

    public DefaultEndianExprInherited(KaitaiStream _io) {
        super(_io);
        this._root = this;
        _init();
    }

    public DefaultEndianExprInherited(KaitaiStream _io, KaitaiStruct _parent) {
        super(_io);
        this._parent = _parent;
        this._root = this;
        _init();
    }

    public DefaultEndianExprInherited(KaitaiStream _io, KaitaiStruct _parent, DefaultEndianExprInherited _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root;
        _init();
    }

    private void _init() {
        _read();
    }
    private void _read() {
        this.docs = new ArrayList<Doc>();
        while (!this._io.isEof()) {
            this.docs.add(new Doc(this._io, this, _root));
        }
    }
    public static class Doc extends KaitaiStruct {
        public static Doc fromFile(String fileName) throws IOException {
            return new Doc(new KaitaiStream(fileName));
        }

        public Doc(KaitaiStream _io) {
            super(_io);
            _init();
        }

        public Doc(KaitaiStream _io, DefaultEndianExprInherited _parent) {
            super(_io);
            this._parent = _parent;
            _init();
        }

        public Doc(KaitaiStream _io, DefaultEndianExprInherited _parent, DefaultEndianExprInherited _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _init();
        }

        private void _init() {
            _read();
        }
        private void _read() {
            this.indicator = this._io.readBytes(2);
            this.main = new MainObj(this._io, this, _root);
        }
        public static class MainObj extends KaitaiStruct {
            public static MainObj fromFile(String fileName) throws IOException {
                return new MainObj(new KaitaiStream(fileName));
            }
            private Boolean _is_le;

            public MainObj(KaitaiStream _io) {
                super(_io);
                _init();
            }

            public MainObj(KaitaiStream _io, DefaultEndianExprInherited.Doc _parent) {
                super(_io);
                this._parent = _parent;
                _init();
            }

            public MainObj(KaitaiStream _io, DefaultEndianExprInherited.Doc _parent, DefaultEndianExprInherited _root) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
                _init();
            }

            private void _init() {
                {
                    byte[] on = _parent().indicator();
                    if (Arrays.equals(on, new byte[] { 73, 73 })) {
                        boolean _tmp = (boolean) (true);
                        this._is_le = _tmp;
                    }
                    else {
                        boolean _tmp = (boolean) (false);
                        this._is_le = _tmp;
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
            }
            private void _readBE() {
                this.insides = new SubObj(this._io, this, _root, _is_le);
            }
            public static class SubObj extends KaitaiStruct {
                public static SubObj fromFile(String fileName) throws IOException {
                    return new SubObj(new KaitaiStream(fileName));
                }
                private Boolean _is_le;

                public SubObj(KaitaiStream _io) {
                    super(_io);
                    _init();
                }

                public SubObj(KaitaiStream _io, DefaultEndianExprInherited.Doc.MainObj _parent) {
                    super(_io);
                    this._parent = _parent;
                    _init();
                }

                public SubObj(KaitaiStream _io, DefaultEndianExprInherited.Doc.MainObj _parent, DefaultEndianExprInherited _root) {
                    super(_io);
                    this._parent = _parent;
                    this._root = _root;
                    _init();
                }

                public SubObj(KaitaiStream _io, DefaultEndianExprInherited.Doc.MainObj _parent, DefaultEndianExprInherited _root, boolean _is_le) {
                    super(_io);
                    this._parent = _parent;
                    this._root = _root;
                    this._is_le = _is_le;
                    _init();
                }

                private void _init() {

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
                }
                private void _readBE() {
                    this.someInt = this._io.readU4be();
                    this.more = new SubsubObj(this._io, this, _root, _is_le);
                }
                public static class SubsubObj extends KaitaiStruct {
                    public static SubsubObj fromFile(String fileName) throws IOException {
                        return new SubsubObj(new KaitaiStream(fileName));
                    }
                    private Boolean _is_le;

                    public SubsubObj(KaitaiStream _io) {
                        super(_io);
                        _init();
                    }

                    public SubsubObj(KaitaiStream _io, DefaultEndianExprInherited.Doc.MainObj.SubObj _parent) {
                        super(_io);
                        this._parent = _parent;
                        _init();
                    }

                    public SubsubObj(KaitaiStream _io, DefaultEndianExprInherited.Doc.MainObj.SubObj _parent, DefaultEndianExprInherited _root) {
                        super(_io);
                        this._parent = _parent;
                        this._root = _root;
                        _init();
                    }

                    public SubsubObj(KaitaiStream _io, DefaultEndianExprInherited.Doc.MainObj.SubObj _parent, DefaultEndianExprInherited _root, boolean _is_le) {
                        super(_io);
                        this._parent = _parent;
                        this._root = _root;
                        this._is_le = _is_le;
                        _init();
                    }

                    private void _init() {

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
                    private Long someInst;
                    public Long someInst() {
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
                    private int someInt1;
                    private int someInt2;
                    private DefaultEndianExprInherited _root;
                    private DefaultEndianExprInherited.Doc.MainObj.SubObj _parent;
                    public int someInt1() { return someInt1; }
                    public int someInt2() { return someInt2; }
                    public DefaultEndianExprInherited _root() { return _root; }
                    public DefaultEndianExprInherited.Doc.MainObj.SubObj _parent() { return _parent; }
                }
                private long someInt;
                private SubsubObj more;
                private DefaultEndianExprInherited _root;
                private DefaultEndianExprInherited.Doc.MainObj _parent;
                public long someInt() { return someInt; }
                public SubsubObj more() { return more; }
                public DefaultEndianExprInherited _root() { return _root; }
                public DefaultEndianExprInherited.Doc.MainObj _parent() { return _parent; }
            }
            private SubObj insides;
            private DefaultEndianExprInherited _root;
            private DefaultEndianExprInherited.Doc _parent;
            public SubObj insides() { return insides; }
            public DefaultEndianExprInherited _root() { return _root; }
            public DefaultEndianExprInherited.Doc _parent() { return _parent; }
        }
        private byte[] indicator;
        private MainObj main;
        private DefaultEndianExprInherited _root;
        private DefaultEndianExprInherited _parent;
        public byte[] indicator() { return indicator; }
        public MainObj main() { return main; }
        public DefaultEndianExprInherited _root() { return _root; }
        public DefaultEndianExprInherited _parent() { return _parent; }
    }
    private ArrayList<Doc> docs;
    private DefaultEndianExprInherited _root;
    private KaitaiStruct _parent;
    public ArrayList<Doc> docs() { return docs; }
    public DefaultEndianExprInherited _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
