// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;

namespace Kaitai
{
    public partial class SwitchManualStr : KaitaiStruct
    {
        public static SwitchManualStr FromFile(string fileName)
        {
            return new SwitchManualStr(new KaitaiStream(fileName));
        }

        public SwitchManualStr(KaitaiStream p__io, KaitaiStruct p__parent = null, SwitchManualStr p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
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

            public Opcode(KaitaiStream p__io, SwitchManualStr p__parent = null, SwitchManualStr p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read() {
                _code = System.Text.Encoding.GetEncoding("ASCII").GetString(m_io.ReadBytes(1));
                switch (Code) {
                case "I": {
                    _body = new Intval(m_io, this, m_root);
                    break;
                }
                case "S": {
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

                public Intval(KaitaiStream p__io, SwitchManualStr.Opcode p__parent = null, SwitchManualStr p__root = null) : base(p__io)
                {
                    m_parent = p__parent;
                    m_root = p__root;
                    _read();
                }
                private void _read() {
                    _value = m_io.ReadU1();
                }
                private byte _value;
                private SwitchManualStr m_root;
                private SwitchManualStr.Opcode m_parent;
                public byte Value { get { return _value; } }
                public SwitchManualStr M_Root { get { return m_root; } }
                public SwitchManualStr.Opcode M_Parent { get { return m_parent; } }
            }
            public partial class Strval : KaitaiStruct
            {
                public static Strval FromFile(string fileName)
                {
                    return new Strval(new KaitaiStream(fileName));
                }

                public Strval(KaitaiStream p__io, SwitchManualStr.Opcode p__parent = null, SwitchManualStr p__root = null) : base(p__io)
                {
                    m_parent = p__parent;
                    m_root = p__root;
                    _read();
                }
                private void _read() {
                    _value = System.Text.Encoding.GetEncoding("ASCII").GetString(m_io.ReadBytesTerm(0, false, true, true));
                }
                private string _value;
                private SwitchManualStr m_root;
                private SwitchManualStr.Opcode m_parent;
                public string Value { get { return _value; } }
                public SwitchManualStr M_Root { get { return m_root; } }
                public SwitchManualStr.Opcode M_Parent { get { return m_parent; } }
            }
            private string _code;
            private KaitaiStruct _body;
            private SwitchManualStr m_root;
            private SwitchManualStr m_parent;
            public string Code { get { return _code; } }
            public KaitaiStruct Body { get { return _body; } }
            public SwitchManualStr M_Root { get { return m_root; } }
            public SwitchManualStr M_Parent { get { return m_parent; } }
        }
        private List<Opcode> _opcodes;
        private SwitchManualStr m_root;
        private KaitaiStruct m_parent;
        public List<Opcode> Opcodes { get { return _opcodes; } }
        public SwitchManualStr M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
