// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class SwitchElseOnly : KaitaiStruct
    {
        public static SwitchElseOnly FromFile(string fileName)
        {
            return new SwitchElseOnly(new KaitaiStream(fileName));
        }

        public SwitchElseOnly(KaitaiStream p__io, KaitaiStruct p__parent = null, SwitchElseOnly p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _opcode = m_io.ReadS1();
            _primByte = m_io.ReadS1();
            _indicator = m_io.ReadBytes(4);
            _struct = new Data(m_io, this, m_root);
        }
        public partial class Data : KaitaiStruct
        {
            public static Data FromFile(string fileName)
            {
                return new Data(new KaitaiStream(fileName));
            }

            public Data(KaitaiStream p__io, SwitchElseOnly p__parent = null, SwitchElseOnly p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _value = m_io.ReadBytes(4);
            }
            private byte[] _value;
            private SwitchElseOnly m_root;
            private SwitchElseOnly m_parent;
            public byte[] Value { get { return _value; } }
            public SwitchElseOnly M_Root { get { return m_root; } }
            public SwitchElseOnly M_Parent { get { return m_parent; } }
        }
        private sbyte _opcode;
        private sbyte _primByte;
        private byte[] _indicator;
        private Data _struct;
        private SwitchElseOnly m_root;
        private KaitaiStruct m_parent;
        public sbyte Opcode { get { return _opcode; } }
        public sbyte PrimByte { get { return _primByte; } }
        public byte[] Indicator { get { return _indicator; } }
        public Data Struct { get { return _struct; } }
        public SwitchElseOnly M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
