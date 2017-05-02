// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;

namespace Kaitai
{
    public partial class DebugEnumName : KaitaiStruct
    {
        public static DebugEnumName FromFile(string fileName)
        {
            return new DebugEnumName(new KaitaiStream(fileName));
        }

        public enum TestEnum1
        {
            EnumValue80 = 80,
        }

        public enum TestEnum2
        {
            EnumValue65 = 65,
        }

        public DebugEnumName(KaitaiStream io, KaitaiStruct parent = null, DebugEnumName root = null) : base(io)
        {
            m_parent = parent;
            m_root = root ?? this;
            _parse();
        }

        private void _parse()
        {
            _one = ((TestEnum1) m_io.ReadU1());
            _arrayOfInts = new List<TestEnum2>((int) (1));
            for (var i = 0; i < 1; i++) {
                _arrayOfInts.Add(((TestEnum2) m_io.ReadU1()));
            }
            _testType = new TestSubtype(m_io, this, m_root);
        }
        public partial class TestSubtype : KaitaiStruct
        {
            public static TestSubtype FromFile(string fileName)
            {
                return new TestSubtype(new KaitaiStream(fileName));
            }

            public enum InnerEnum1
            {
                EnumValue67 = 67,
            }

            public enum InnerEnum2
            {
                EnumValue11 = 11,
            }

            public TestSubtype(KaitaiStream io, DebugEnumName parent = null, DebugEnumName root = null) : base(io)
            {
                m_parent = parent;
                m_root = root;
                _parse();
            }

            private void _parse()
            {
                f_instanceField = false;
                _field1 = ((InnerEnum1) m_io.ReadU1());
                _field2 = m_io.ReadU1();
            }
            private bool f_instanceField;
            private InnerEnum2 _instanceField;
            public InnerEnum2 InstanceField
            {
                get
                {
                    if (f_instanceField)
                        return _instanceField;
                    _instanceField = (InnerEnum2) (((InnerEnum2) (Field2 & 15)));
                    f_instanceField = true;
                    return _instanceField;
                }
            }
            private InnerEnum1 _field1;
            private byte _field2;
            private DebugEnumName m_root;
            private DebugEnumName m_parent;
            public InnerEnum1 Field1 { get { return _field1; } }
            public byte Field2 { get { return _field2; } }
            public DebugEnumName M_Root { get { return m_root; } }
            public DebugEnumName M_Parent { get { return m_parent; } }
        }
        private TestEnum1 _one;
        private List<TestEnum2> _arrayOfInts;
        private TestSubtype _testType;
        private DebugEnumName m_root;
        private KaitaiStruct m_parent;
        public TestEnum1 One { get { return _one; } }
        public List<TestEnum2> ArrayOfInts { get { return _arrayOfInts; } }
        public TestSubtype TestType { get { return _testType; } }
        public DebugEnumName M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
