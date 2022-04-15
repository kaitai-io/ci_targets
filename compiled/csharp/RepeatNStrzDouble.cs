// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;

namespace Kaitai
{
    public partial class RepeatNStrzDouble : KaitaiStruct
    {
        public static RepeatNStrzDouble FromFile(string fileName)
        {
            return new RepeatNStrzDouble(new KaitaiStream(fileName));
        }

        public RepeatNStrzDouble(KaitaiStream p__io, KaitaiStruct p__parent = null, RepeatNStrzDouble p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _qty = m_io.ReadU4le();
            _lines1 = new List<string>();
            for (var i = 0; i < (Qty / 2); i++)
            {
                _lines1.Add(System.Text.Encoding.GetEncoding("UTF-8").GetString(m_io.ReadBytesTerm(0, false, true, true)));
            }
            _lines2 = new List<string>();
            for (var i = 0; i < (Qty / 2); i++)
            {
                _lines2.Add(System.Text.Encoding.GetEncoding("UTF-8").GetString(m_io.ReadBytesTerm(0, false, true, true)));
            }
        }
        private uint _qty;
        private List<string> _lines1;
        private List<string> _lines2;
        private RepeatNStrzDouble m_root;
        private KaitaiStruct m_parent;
        public uint Qty { get { return _qty; } }
        public List<string> Lines1 { get { return _lines1; } }
        public List<string> Lines2 { get { return _lines2; } }
        public RepeatNStrzDouble M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
