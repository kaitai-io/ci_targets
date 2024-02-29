// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;

namespace Kaitai
{
    public partial class SwitchManualStrElse : KaitaiStruct
    {
        public static SwitchManualStrElse FromFile(string fileName)
        {
            return new SwitchManualStrElse(new KaitaiStream(fileName));
        }

        public SwitchManualStrElse(KaitaiStream p__io, KaitaiStruct p__parent = null, SwitchManualStrElse p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _opcodes = new List<Opcode>();
            {
                var i = 0;
                while (!m_io.IsEof) {
                    _opcodes.Add(new Opcode(m_io, this, m_root));
                    i++;
                }
            }
        }
        public partial class Opcode : KaitaiStruct
        {
            public static Opcode FromFile(string fileName)
            {
                return new Opcode(new KaitaiStream(fileName));
            }

            public Opcode(KaitaiStream p__io, SwitchManualStrElse p__parent = null, SwitchManualStrElse p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
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
                default: {
                    _body = new Noneval(m_io, this, m_root);
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

                public Intval(KaitaiStream p__io, SwitchManualStrElse.Opcode p__parent = null, SwitchManualStrElse p__root = null) : base(p__io)
                {
                    m_parent = p__parent;
                    m_root = p__root;
                    _read();
                }
                private void _read()
                {
                    _value = m_io.ReadU1();
                }
                private byte _value;
                private SwitchManualStrElse m_root;
                private SwitchManualStrElse.Opcode m_parent;
                public byte Value { get { return _value; } }
                public SwitchManualStrElse M_Root { get { return m_root; } }
                public SwitchManualStrElse.Opcode M_Parent { get { return m_parent; } }
            }
            public partial class Noneval : KaitaiStruct
            {
                public static Noneval FromFile(string fileName)
                {
                    return new Noneval(new KaitaiStream(fileName));
                }

                public Noneval(KaitaiStream p__io, SwitchManualStrElse.Opcode p__parent = null, SwitchManualStrElse p__root = null) : base(p__io)
                {
                    m_parent = p__parent;
                    m_root = p__root;
                    _read();
                }
                private void _read()
                {
                    _filler = m_io.ReadU4le();
                }
                private uint _filler;
                private SwitchManualStrElse m_root;
                private SwitchManualStrElse.Opcode m_parent;
                public uint Filler { get { return _filler; } }
                public SwitchManualStrElse M_Root { get { return m_root; } }
                public SwitchManualStrElse.Opcode M_Parent { get { return m_parent; } }
            }
            public partial class Strval : KaitaiStruct
            {
                public static Strval FromFile(string fileName)
                {
                    return new Strval(new KaitaiStream(fileName));
                }

                public Strval(KaitaiStream p__io, SwitchManualStrElse.Opcode p__parent = null, SwitchManualStrElse p__root = null) : base(p__io)
                {
                    m_parent = p__parent;
                    m_root = p__root;
                    _read();
                }
                private void _read()
                {
                    _value = System.Text.Encoding.GetEncoding("ASCII").GetString(m_io.ReadBytesTerm(0, false, true, true));
                }
                private string _value;
                private SwitchManualStrElse m_root;
                private SwitchManualStrElse.Opcode m_parent;
                public string Value { get { return _value; } }
                public SwitchManualStrElse M_Root { get { return m_root; } }
                public SwitchManualStrElse.Opcode M_Parent { get { return m_parent; } }
            }
            private string _code;
            private KaitaiStruct _body;
            private SwitchManualStrElse m_root;
            private SwitchManualStrElse m_parent;
            public string Code { get { return _code; } }
            public KaitaiStruct Body { get { return _body; } }
            public SwitchManualStrElse M_Root { get { return m_root; } }
            public SwitchManualStrElse M_Parent { get { return m_parent; } }
        }
        private List<Opcode> _opcodes;
        private SwitchManualStrElse m_root;
        private KaitaiStruct m_parent;
        public List<Opcode> Opcodes { get { return _opcodes; } }
        public SwitchManualStrElse M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
