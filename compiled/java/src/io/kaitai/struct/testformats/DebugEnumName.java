// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import io.kaitai.struct.IKaitaiEnum;
import java.util.ArrayList;

public class DebugEnumName extends KaitaiStruct.ReadOnly {
    public Map<String, Integer> _attrStart = new HashMap<String, Integer>();
    public Map<String, Integer> _attrEnd = new HashMap<String, Integer>();
    public Map<String, List<Integer>> _arrStart = new HashMap<String, List<Integer>>();
    public Map<String, List<Integer>> _arrEnd = new HashMap<String, List<Integer>>();

    public static DebugEnumName fromFile(String fileName) throws IOException {
        return new DebugEnumName(new ByteBufferKaitaiStream(fileName));
    }

    public interface ITestEnum1 extends IKaitaiEnum {
        public static final class Unknown extends IKaitaiEnum.Unknown implements ITestEnum1 {
            Unknown(long id) { super(id); }

            @Override
            public String toString() { return "TestEnum1(" + this.id + ")"; }

            @Override
            public int hashCode() {
                final int result = 31 + "TestEnum1".hashCode();
                return 31 * result + Long.hashCode(this.id);
            }

            @Override
            public boolean equals(Object other) {
                return other instanceof ITestEnum1.Unknown && this.id == ((ITestEnum1.Unknown)other).id;
            }
        }
    }
    public enum TestEnum1 implements ITestEnum1 {
        ENUM_VALUE_80(80);

        private final long id;
        private static final HashMap<Long, ITestEnum1> variants = new HashMap<>(1);
        static {
            for (TestEnum1 e : values()) {
                variants.put(e.id, e);
            }
        }

        public static ITestEnum1 byId(final long id) {
            return variants.computeIfAbsent(id, _id -> new ITestEnum1.Unknown(id));
        }

        private TestEnum1(long id) { this.id = id; }

        @Override
        public long id() { return id; }
    }

    public interface ITestEnum2 extends IKaitaiEnum {
        public static final class Unknown extends IKaitaiEnum.Unknown implements ITestEnum2 {
            Unknown(long id) { super(id); }

            @Override
            public String toString() { return "TestEnum2(" + this.id + ")"; }

            @Override
            public int hashCode() {
                final int result = 31 + "TestEnum2".hashCode();
                return 31 * result + Long.hashCode(this.id);
            }

            @Override
            public boolean equals(Object other) {
                return other instanceof ITestEnum2.Unknown && this.id == ((ITestEnum2.Unknown)other).id;
            }
        }
    }
    public enum TestEnum2 implements ITestEnum2 {
        ENUM_VALUE_65(65);

        private final long id;
        private static final HashMap<Long, ITestEnum2> variants = new HashMap<>(1);
        static {
            for (TestEnum2 e : values()) {
                variants.put(e.id, e);
            }
        }

        public static ITestEnum2 byId(final long id) {
            return variants.computeIfAbsent(id, _id -> new ITestEnum2.Unknown(id));
        }

        private TestEnum2(long id) { this.id = id; }

        @Override
        public long id() { return id; }
    }
    public static String[] _seqFields = new String[] { "one", "arrayOfInts", "testType" };

    public DebugEnumName(KaitaiStream _io) {
        this(_io, null, null);
    }

    public DebugEnumName(KaitaiStream _io, KaitaiStruct.ReadOnly _parent) {
        this(_io, _parent, null);
    }

    public DebugEnumName(KaitaiStream _io, KaitaiStruct.ReadOnly _parent, DebugEnumName _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        _attrStart.put("one", this._io.pos());
        this.one = TestEnum1.byId(this._io.readU1());
        _attrEnd.put("one", this._io.pos());
        _attrStart.put("arrayOfInts", this._io.pos());
        this.arrayOfInts = new ArrayList<ITestEnum2>();
        for (int i = 0; i < 1; i++) {
            {
                List<Integer> _posList = _arrStart.get("arrayOfInts");
                if (_posList == null) {
                    _posList = new ArrayList<Integer>();
                    _arrStart.put("arrayOfInts", _posList);
                }
                _posList.add(this._io.pos());
            }
            this.arrayOfInts.add(TestEnum2.byId(this._io.readU1()));
            {
                List<Integer> _posList = _arrEnd.get("arrayOfInts");
                if (_posList == null) {
                    _posList = new ArrayList<Integer>();
                    _arrEnd.put("arrayOfInts", _posList);
                }
                _posList.add(this._io.pos());
            }
        }
        _attrEnd.put("arrayOfInts", this._io.pos());
        _attrStart.put("testType", this._io.pos());
        this.testType = new TestSubtype(this._io, this, _root);
        this.testType._read();
        _attrEnd.put("testType", this._io.pos());
    }

    public void _fetchInstances() {
        for (int i = 0; i < this.arrayOfInts.size(); i++) {
        }
        this.testType._fetchInstances();
    }
    public static class TestSubtype extends KaitaiStruct.ReadOnly {
        public Map<String, Integer> _attrStart = new HashMap<String, Integer>();
        public Map<String, Integer> _attrEnd = new HashMap<String, Integer>();
        public Map<String, List<Integer>> _arrStart = new HashMap<String, List<Integer>>();
        public Map<String, List<Integer>> _arrEnd = new HashMap<String, List<Integer>>();

        public static TestSubtype fromFile(String fileName) throws IOException {
            return new TestSubtype(new ByteBufferKaitaiStream(fileName));
        }

        public interface IInnerEnum1 extends IKaitaiEnum {
            public static final class Unknown extends IKaitaiEnum.Unknown implements IInnerEnum1 {
                Unknown(long id) { super(id); }

                @Override
                public String toString() { return "InnerEnum1(" + this.id + ")"; }

                @Override
                public int hashCode() {
                    final int result = 31 + "InnerEnum1".hashCode();
                    return 31 * result + Long.hashCode(this.id);
                }

                @Override
                public boolean equals(Object other) {
                    return other instanceof IInnerEnum1.Unknown && this.id == ((IInnerEnum1.Unknown)other).id;
                }
            }
        }
        public enum InnerEnum1 implements IInnerEnum1 {
            ENUM_VALUE_67(67);

            private final long id;
            private static final HashMap<Long, IInnerEnum1> variants = new HashMap<>(1);
            static {
                for (InnerEnum1 e : values()) {
                    variants.put(e.id, e);
                }
            }

            public static IInnerEnum1 byId(final long id) {
                return variants.computeIfAbsent(id, _id -> new IInnerEnum1.Unknown(id));
            }

            private InnerEnum1(long id) { this.id = id; }

            @Override
            public long id() { return id; }
        }

        public interface IInnerEnum2 extends IKaitaiEnum {
            public static final class Unknown extends IKaitaiEnum.Unknown implements IInnerEnum2 {
                Unknown(long id) { super(id); }

                @Override
                public String toString() { return "InnerEnum2(" + this.id + ")"; }

                @Override
                public int hashCode() {
                    final int result = 31 + "InnerEnum2".hashCode();
                    return 31 * result + Long.hashCode(this.id);
                }

                @Override
                public boolean equals(Object other) {
                    return other instanceof IInnerEnum2.Unknown && this.id == ((IInnerEnum2.Unknown)other).id;
                }
            }
        }
        public enum InnerEnum2 implements IInnerEnum2 {
            ENUM_VALUE_11(11);

            private final long id;
            private static final HashMap<Long, IInnerEnum2> variants = new HashMap<>(1);
            static {
                for (InnerEnum2 e : values()) {
                    variants.put(e.id, e);
                }
            }

            public static IInnerEnum2 byId(final long id) {
                return variants.computeIfAbsent(id, _id -> new IInnerEnum2.Unknown(id));
            }

            private InnerEnum2(long id) { this.id = id; }

            @Override
            public long id() { return id; }
        }
        public static String[] _seqFields = new String[] { "field1", "field2" };

        public TestSubtype(KaitaiStream _io) {
            this(_io, null, null);
        }

        public TestSubtype(KaitaiStream _io, DebugEnumName _parent) {
            this(_io, _parent, null);
        }

        public TestSubtype(KaitaiStream _io, DebugEnumName _parent, DebugEnumName _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            _attrStart.put("field1", this._io.pos());
            this.field1 = InnerEnum1.byId(this._io.readU1());
            _attrEnd.put("field1", this._io.pos());
            _attrStart.put("field2", this._io.pos());
            this.field2 = this._io.readU1();
            _attrEnd.put("field2", this._io.pos());
        }

        public void _fetchInstances() {
        }
        public IInnerEnum2 instanceField() {
            if (this.instanceField != null)
                return this.instanceField;
            this.instanceField = InnerEnum2.byId(field2() & 15);
            return this.instanceField;
        }
        public IInnerEnum1 field1() { return field1; }
        public int field2() { return field2; }
        public DebugEnumName _root() { return _root; }
        public DebugEnumName _parent() { return _parent; }
        private IInnerEnum2 instanceField;
        private IInnerEnum1 field1;
        private int field2;
        private DebugEnumName _root;
        private DebugEnumName _parent;
    }
    public ITestEnum1 one() { return one; }
    public List<ITestEnum2> arrayOfInts() { return arrayOfInts; }
    public TestSubtype testType() { return testType; }
    public DebugEnumName _root() { return _root; }
    public KaitaiStruct.ReadOnly _parent() { return _parent; }
    private ITestEnum1 one;
    private List<ITestEnum2> arrayOfInts;
    private TestSubtype testType;
    private DebugEnumName _root;
    private KaitaiStruct.ReadOnly _parent;
}
