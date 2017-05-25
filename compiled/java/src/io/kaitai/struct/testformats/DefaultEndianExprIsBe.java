// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;

public class DefaultEndianExprIsBe extends KaitaiStruct {
    public static DefaultEndianExprIsBe fromFile(String fileName) throws IOException {
        return new DefaultEndianExprIsBe(new KaitaiStream(fileName));
    }

    public DefaultEndianExprIsBe(KaitaiStream _io) {
        super(_io);
        this._root = this;
        _init();
    }

    public DefaultEndianExprIsBe(KaitaiStream _io, KaitaiStruct _parent) {
        super(_io);
        this._parent = _parent;
        this._root = this;
        _init();
    }

    public DefaultEndianExprIsBe(KaitaiStream _io, KaitaiStruct _parent, DefaultEndianExprIsBe _root) {
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

        public Doc(KaitaiStream _io, DefaultEndianExprIsBe _parent) {
            super(_io);
            this._parent = _parent;
            _init();
        }

        public Doc(KaitaiStream _io, DefaultEndianExprIsBe _parent, DefaultEndianExprIsBe _root) {
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

            public MainObj(KaitaiStream _io, DefaultEndianExprIsBe.Doc _parent) {
                super(_io);
                this._parent = _parent;
                _init();
            }

            public MainObj(KaitaiStream _io, DefaultEndianExprIsBe.Doc _parent, DefaultEndianExprIsBe _root) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
                _init();
            }

            private void _init() {
                {
                    byte[] on = _parent().indicator();
                    if (Arrays.equals(on, new byte[] { 77, 77 })) {
                        boolean _tmp = (boolean) (false);
                        this._is_le = _tmp;
                    }
                    else {
                        boolean _tmp = (boolean) (true);
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
                this.someInt = this._io.readU4le();
                this.someIntBe = this._io.readU2be();
                this.someIntLe = this._io.readU2le();
            }
            private void _readBE() {
                this.someInt = this._io.readU4be();
                this.someIntBe = this._io.readU2be();
                this.someIntLe = this._io.readU2le();
            }
            public static class SubMainObj extends KaitaiStruct {
                public static SubMainObj fromFile(String fileName) throws IOException {
                    return new SubMainObj(new KaitaiStream(fileName));
                }
                private Boolean _is_le;

                public SubMainObj(KaitaiStream _io) {
                    super(_io);
                    _init();
                }

                public SubMainObj(KaitaiStream _io, DefaultEndianExprIsBe.Doc.MainObj _parent) {
                    super(_io);
                    this._parent = _parent;
                    _init();
                }

                public SubMainObj(KaitaiStream _io, DefaultEndianExprIsBe.Doc.MainObj _parent, DefaultEndianExprIsBe _root) {
                    super(_io);
                    this._parent = _parent;
                    this._root = _root;
                    _init();
                }

                public SubMainObj(KaitaiStream _io, DefaultEndianExprIsBe.Doc.MainObj _parent, DefaultEndianExprIsBe _root, boolean _is_le) {
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
                    this.foo = this._io.readU4le();
                }
                private void _readBE() {
                    this.foo = this._io.readU4be();
                }
                private long foo;
                private DefaultEndianExprIsBe _root;
                private DefaultEndianExprIsBe.Doc.MainObj _parent;
                public long foo() { return foo; }
                public DefaultEndianExprIsBe _root() { return _root; }
                public DefaultEndianExprIsBe.Doc.MainObj _parent() { return _parent; }
            }
            private Long instInt;
            public Long instInt() {
                if (this.instInt != null)
                    return this.instInt;
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
            private SubMainObj instSub;
            public SubMainObj instSub() {
                if (this.instSub != null)
                    return this.instSub;
                long _pos = this._io.pos();
                this._io.seek(2);
                if (_is_le) {
                    this.instSub = new SubMainObj(this._io, this, _root, _is_le);
                } else {
                    this.instSub = new SubMainObj(this._io, this, _root, _is_le);
                }
                this._io.seek(_pos);
                return this.instSub;
            }
            private long someInt;
            private int someIntBe;
            private int someIntLe;
            private DefaultEndianExprIsBe _root;
            private DefaultEndianExprIsBe.Doc _parent;
            public long someInt() { return someInt; }
            public int someIntBe() { return someIntBe; }
            public int someIntLe() { return someIntLe; }
            public DefaultEndianExprIsBe _root() { return _root; }
            public DefaultEndianExprIsBe.Doc _parent() { return _parent; }
        }
        private byte[] indicator;
        private MainObj main;
        private DefaultEndianExprIsBe _root;
        private DefaultEndianExprIsBe _parent;
        public byte[] indicator() { return indicator; }
        public MainObj main() { return main; }
        public DefaultEndianExprIsBe _root() { return _root; }
        public DefaultEndianExprIsBe _parent() { return _parent; }
    }
    private ArrayList<Doc> docs;
    private DefaultEndianExprIsBe _root;
    private KaitaiStruct _parent;
    public ArrayList<Doc> docs() { return docs; }
    public DefaultEndianExprIsBe _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
