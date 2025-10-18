// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import java.nio.charset.StandardCharsets;
import java.util.List;
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
            this.strArray.add(new String(this._io.readBytes(2), StandardCharsets.US_ASCII));
        }
        this.passStrArray = new WantsStrs(this._io, this, _root, strArray());
        this.passStrArrayCalc = new WantsStrs(this._io, this, _root, strArrayCalc());
    }

    public void _fetchInstances() {
        for (int i = 0; i < this.strArray.size(); i++) {
        }
        this.passStrArray._fetchInstances();
        this.passStrArrayCalc._fetchInstances();
    }
    public static class WantsStrs extends KaitaiStruct {

        public WantsStrs(KaitaiStream _io, List<String> strs) {
            this(_io, null, null, strs);
        }

        public WantsStrs(KaitaiStream _io, ParamsPassArrayStr _parent, List<String> strs) {
            this(_io, _parent, null, strs);
        }

        public WantsStrs(KaitaiStream _io, ParamsPassArrayStr _parent, ParamsPassArrayStr _root, List<String> strs) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            this.strs = strs;
            _read();
        }
        private void _read() {
        }

        public void _fetchInstances() {
        }
        public List<String> strs() { return strs; }
        public ParamsPassArrayStr _root() { return _root; }
        public ParamsPassArrayStr _parent() { return _parent; }
        private List<String> strs;
        private ParamsPassArrayStr _root;
        private ParamsPassArrayStr _parent;
    }
    public List<String> strArrayCalc() {
        if (this.strArrayCalc != null)
            return this.strArrayCalc;
        this.strArrayCalc = new ArrayList<String>(Arrays.asList("aB", "Cd"));
        return this.strArrayCalc;
    }
    public List<String> strArray() { return strArray; }
    public WantsStrs passStrArray() { return passStrArray; }
    public WantsStrs passStrArrayCalc() { return passStrArrayCalc; }
    public ParamsPassArrayStr _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private List<String> strArrayCalc;
    private List<String> strArray;
    private WantsStrs passStrArray;
    private WantsStrs passStrArrayCalc;
    private ParamsPassArrayStr _root;
    private KaitaiStruct _parent;
}
