// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class EnumIf : KaitaiStruct
    {
        public static EnumIf FromFile(string fileName)
        {
            return new EnumIf(new KaitaiStream(fileName));
        }


        public enum Opcodes
        {
            AString = 83,
            ATuple = 84,
        }
        public EnumIf(KaitaiStream p__io, KaitaiStruct p__parent = null, EnumIf p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _op1 = new Operation(m_io, this, m_root);
            _op2 = new Operation(m_io, this, m_root);
            _op3 = new Operation(m_io, this, m_root);
        }
        public partial class Operation : KaitaiStruct
        {
            public static Operation FromFile(string fileName)
            {
                return new Operation(new KaitaiStream(fileName));
            }

            public Operation(KaitaiStream p__io, EnumIf p__parent = null, EnumIf p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _opcode = ((EnumIf.Opcodes) m_io.ReadU1());
                if (Opcode == EnumIf.Opcodes.ATuple) {
                    _argTuple = new ArgTuple(m_io, this, m_root);
                }
                if (Opcode == EnumIf.Opcodes.AString) {
                    _argStr = new ArgStr(m_io, this, m_root);
                }
            }
            private Opcodes _opcode;
            private ArgTuple _argTuple;
            private ArgStr _argStr;
            private EnumIf m_root;
            private EnumIf m_parent;
            public Opcodes Opcode { get { return _opcode; } }
            public ArgTuple ArgTuple { get { return _argTuple; } }
            public ArgStr ArgStr { get { return _argStr; } }
            public EnumIf M_Root { get { return m_root; } }
            public EnumIf M_Parent { get { return m_parent; } }
        }
        public partial class ArgTuple : KaitaiStruct
        {
            public static ArgTuple FromFile(string fileName)
            {
                return new ArgTuple(new KaitaiStream(fileName));
            }

            public ArgTuple(KaitaiStream p__io, EnumIf.Operation p__parent = null, EnumIf p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _num1 = m_io.ReadU1();
                _num2 = m_io.ReadU1();
            }
            private byte _num1;
            private byte _num2;
            private EnumIf m_root;
            private EnumIf.Operation m_parent;
            public byte Num1 { get { return _num1; } }
            public byte Num2 { get { return _num2; } }
            public EnumIf M_Root { get { return m_root; } }
            public EnumIf.Operation M_Parent { get { return m_parent; } }
        }
        public partial class ArgStr : KaitaiStruct
        {
            public static ArgStr FromFile(string fileName)
            {
                return new ArgStr(new KaitaiStream(fileName));
            }

            public ArgStr(KaitaiStream p__io, EnumIf.Operation p__parent = null, EnumIf p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _len = m_io.ReadU1();
                _str = System.Text.Encoding.GetEncoding("UTF-8").GetString(m_io.ReadBytes(Len));
            }
            private byte _len;
            private string _str;
            private EnumIf m_root;
            private EnumIf.Operation m_parent;
            public byte Len { get { return _len; } }
            public string Str { get { return _str; } }
            public EnumIf M_Root { get { return m_root; } }
            public EnumIf.Operation M_Parent { get { return m_parent; } }
        }
        private Operation _op1;
        private Operation _op2;
        private Operation _op3;
        private EnumIf m_root;
        private KaitaiStruct m_parent;
        public Operation Op1 { get { return _op1; } }
        public Operation Op2 { get { return _op2; } }
        public Operation Op3 { get { return _op3; } }
        public EnumIf M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
