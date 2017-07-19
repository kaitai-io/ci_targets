// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;

namespace Kaitai
{
    public partial class SwitchManualEnum : KaitaiStruct
    {
        public static SwitchManualEnum FromFile(string fileName)
        {
            return new SwitchManualEnum(new KaitaiStream(fileName));
        }

        public SwitchManualEnum(KaitaiStream io, KaitaiStruct parent = null, SwitchManualEnum root = null) : base(io)
        {
            m_parent = parent;
            m_root = root ?? this;
            _read();
        }
        private void _read() {
            _opcodes = new List<Opcode>();
            while (!m_io.IsEof) {
                _opcodes.Add(new Opcode(m_io, this, m_root));
            }
            }
        public partial class Opcode : KaitaiStruct
        {
            public static Opcode FromFile(string fileName)
            {
                return new Opcode(new KaitaiStream(fileName));
            }

            public enum CodeEnum
            {
                Intval = 73,
                Strval = 83,
            }

            public Opcode(KaitaiStream io, SwitchManualEnum parent = null, SwitchManualEnum root = null) : base(io)
            {
                m_parent = parent;
                m_root = root;
                _read();
            }
            private void _read() {
                _code = ((CodeEnum) m_io.ReadU1());
                switch (Code) {
                case CodeEnum.Intval: {
                    _body = new Intval(m_io, this, m_root);
                    break;
                }
                case CodeEnum.Strval: {
                    _body = new Strval(m_io, this, m_root);
                    break;
                }
                }
                }
            public partial class Intval : KaitaiStruct
            {
                public static Intval FromFile(string fileName)
                {
                    return new Intval(new KaitaiStream(fileName));
                }

                public Intval(KaitaiStream io, SwitchManualEnum.Opcode parent = null, SwitchManualEnum root = null) : base(io)
                {
                    m_parent = parent;
                    m_root = root;
                    _read();
                }
                private void _read() {
                    _value = m_io.ReadU1();
                    }
                private byte _value;
                private SwitchManualEnum m_root;
                private SwitchManualEnum.Opcode m_parent;
                public byte Value { get { return _value; } }
                public SwitchManualEnum M_Root { get { return m_root; } }
                public SwitchManualEnum.Opcode M_Parent { get { return m_parent; } }
            }
            public partial class Strval : KaitaiStruct
            {
                public static Strval FromFile(string fileName)
                {
                    return new Strval(new KaitaiStream(fileName));
                }

                public Strval(KaitaiStream io, SwitchManualEnum.Opcode parent = null, SwitchManualEnum root = null) : base(io)
                {
                    m_parent = parent;
                    m_root = root;
                    _read();
                }
                private void _read() {
                    _value = System.Text.Encoding.GetEncoding("ASCII").GetString(m_io.ReadBytesTerm(0, false, true, true));
                    }
                private string _value;
                private SwitchManualEnum m_root;
                private SwitchManualEnum.Opcode m_parent;
                public string Value { get { return _value; } }
                public SwitchManualEnum M_Root { get { return m_root; } }
                public SwitchManualEnum.Opcode M_Parent { get { return m_parent; } }
            }
            private CodeEnum _code;
            private KaitaiStruct _body;
            private SwitchManualEnum m_root;
            private SwitchManualEnum m_parent;
            public CodeEnum Code { get { return _code; } }
            public KaitaiStruct Body { get { return _body; } }
            public SwitchManualEnum M_Root { get { return m_root; } }
            public SwitchManualEnum M_Parent { get { return m_parent; } }
        }
        private List<Opcode> _opcodes;
        private SwitchManualEnum m_root;
        private KaitaiStruct m_parent;
        public List<Opcode> Opcodes { get { return _opcodes; } }
        public SwitchManualEnum M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
