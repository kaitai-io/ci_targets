// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;

namespace Kaitai
{
    public partial class SwitchManualIntElse : KaitaiStruct
    {
        public static SwitchManualIntElse FromFile(string fileName)
        {
            return new SwitchManualIntElse(new KaitaiStream(fileName));
        }

        public SwitchManualIntElse(KaitaiStream p__io, KaitaiStruct p__parent = null, SwitchManualIntElse p__root = null) : base(p__io)
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

            public Opcode(KaitaiStream p__io, SwitchManualIntElse p__parent = null, SwitchManualIntElse p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _code = m_io.ReadU1();
                switch (Code) {
                case 73: {
                    _body = new Intval(m_io, this, m_root);
                    break;
                }
                case 83: {
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

                public Intval(KaitaiStream p__io, SwitchManualIntElse.Opcode p__parent = null, SwitchManualIntElse p__root = null) : base(p__io)
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
                private SwitchManualIntElse m_root;
                private SwitchManualIntElse.Opcode m_parent;
                public byte Value { get { return _value; } }
                public SwitchManualIntElse M_Root { get { return m_root; } }
                public SwitchManualIntElse.Opcode M_Parent { get { return m_parent; } }
            }
            public partial class Noneval : KaitaiStruct
            {
                public static Noneval FromFile(string fileName)
                {
                    return new Noneval(new KaitaiStream(fileName));
                }

                public Noneval(KaitaiStream p__io, SwitchManualIntElse.Opcode p__parent = null, SwitchManualIntElse p__root = null) : base(p__io)
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
                private SwitchManualIntElse m_root;
                private SwitchManualIntElse.Opcode m_parent;
                public uint Filler { get { return _filler; } }
                public SwitchManualIntElse M_Root { get { return m_root; } }
                public SwitchManualIntElse.Opcode M_Parent { get { return m_parent; } }
            }
            public partial class Strval : KaitaiStruct
            {
                public static Strval FromFile(string fileName)
                {
                    return new Strval(new KaitaiStream(fileName));
                }

                public Strval(KaitaiStream p__io, SwitchManualIntElse.Opcode p__parent = null, SwitchManualIntElse p__root = null) : base(p__io)
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
                private SwitchManualIntElse m_root;
                private SwitchManualIntElse.Opcode m_parent;
                public string Value { get { return _value; } }
                public SwitchManualIntElse M_Root { get { return m_root; } }
                public SwitchManualIntElse.Opcode M_Parent { get { return m_parent; } }
            }
            private byte _code;
            private KaitaiStruct _body;
            private SwitchManualIntElse m_root;
            private SwitchManualIntElse m_parent;
            public byte Code { get { return _code; } }
            public KaitaiStruct Body { get { return _body; } }
            public SwitchManualIntElse M_Root { get { return m_root; } }
            public SwitchManualIntElse M_Parent { get { return m_parent; } }
        }
        private List<Opcode> _opcodes;
        private SwitchManualIntElse m_root;
        private KaitaiStruct m_parent;
        public List<Opcode> Opcodes { get { return _opcodes; } }
        public SwitchManualIntElse M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
