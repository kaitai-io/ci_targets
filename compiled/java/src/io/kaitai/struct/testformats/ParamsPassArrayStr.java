// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import java.nio.charset.Charset;
import java.util.Arrays;

public class ParamsPassArrayStr extends KaitaiStruct {
    public static ParamsPassArrayStr fromFile(String fileName) throws IOException {
        return new ParamsPassArrayStr(new ByteBufferKaitaiStream(fileName));
    }

    public ParamsPassArrayStr(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ParamsPassArrayStr(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ParamsPassArrayStr(KaitaiStream _io, KaitaiStruct _parent, ParamsPassArrayStr _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.strArray = new ArrayList<String>();
        for (int i = 0; i < 3; i++) {
            this.strArray.add(new String(this._io.readBytes(2), Charset.forName("ASCII")));
        }
        this.passStrArray = new WantsStrs(this._io, this, _root, strArray());
        this.passStrArrayCalc = new WantsStrs(this._io, this, _root, strArrayCalc());
    }
    public static class WantsStrs extends KaitaiStruct {

        public WantsStrs(KaitaiStream _io, ArrayList<String> strs) {
            this(_io, null, null, strs);
        }

        public WantsStrs(KaitaiStream _io, ParamsPassArrayStr _parent, ArrayList<String> strs) {
            this(_io, _parent, null, strs);
        }

        public WantsStrs(KaitaiStream _io, ParamsPassArrayStr _parent, ParamsPassArrayStr _root, ArrayList<String> strs) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            this.strs = strs;
            _read();
        }
        private void _read() {
        }
        private ArrayList<String> strs;
        private ParamsPassArrayStr _root;
        private ParamsPassArrayStr _parent;
        public ArrayList<String> strs() { return strs; }
        public ParamsPassArrayStr _root() { return _root; }
        public ParamsPassArrayStr _parent() { return _parent; }
    }
    private ArrayList<String> strArrayCalc;
    public ArrayList<String> strArrayCalc() {
        if (this.strArrayCalc != null)
            return this.strArrayCalc;
        this.strArrayCalc = new ArrayList<String>(Arrays.asList("aB", "Cd"));
        return this.strArrayCalc;
    }
    private ArrayList<String> strArray;
    private WantsStrs passStrArray;
    private WantsStrs passStrArrayCalc;
    private ParamsPassArrayStr _root;
    private KaitaiStruct _parent;
    public ArrayList<String> strArray() { return strArray; }
    public WantsStrs passStrArray() { return passStrArray; }
    public WantsStrs passStrArrayCalc() { return passStrArrayCalc; }
    public ParamsPassArrayStr _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
