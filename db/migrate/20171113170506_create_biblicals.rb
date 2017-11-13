class CreateBiblicals < ActiveRecord::Migration[5.1]
  def change
    create_table :biblicals do |t|
      t.text :citation
      t.text :source

      t.timestamps
    end

    Biblical.create :citation => 'Réjouissez-vous en tout temps de tout ce que le Seigneur est pour vous. Oui, je le répète, soyez dans la joie.', :source => 'Philippiens 4.4'
    Biblical.create :citation => 'Le fruit de l’Esprit c’est l’amour, la joie, la paix, la patience, l’amabilité, la bonté, la fidélité, la douceur, la maîtrise de soi.', :source => 'Galates 5.22-23'
    Biblical.create :citation => 'Il y a plus de bonheur à donner qu’à recevoir.', :source => 'Acte 20.35'
    Biblical.create :citation => 'Dieu donne à l’homme qui lui est agréable la sagesse, la connaissance et la joie.', :source => 'Ecclésiaste 2.26'
    Biblical.create :citation => 'Heureux ceux qui écoutent la Parole de Dieu et qui y obéissent !', :source => 'Luc 11.28'
    Biblical.create :citation => 'Celui qui est attentif à l’instruction trouvera le bonheur. Heureux celui qui met sa confiance en l’Éternel !', :source => 'Proverbes 16.20'
    Biblical.create :citation => 'Heureux les hommes qui ont une conduite intègre et suivent dans leur vie la Loi de l’Éternel. Heureux les hommes qui suivent ses préceptes et cherchent à lui plaire de tout leur cœur.', :source => 'Psaumes 119.1-2'
    Biblical.create :citation => 'Celui qui veut aimer la vie et voir des jours heureux doit veiller sur sa langue pour ne faire aucun mal par ses paroles, et pour qu’aucun propos menteur ne passe sur ses lèvres.', :source => 'Pierre 3.10'
    Biblical.create :citation => 'Heureux l’homme qui a trouvé la sagesse ! Heureux celui qui est devenu raisonnable !', :source => 'Proverbes 3.13'
    Biblical.create :citation => 'Heureux celui qui se soucie du pauvre. S’il est dans le malheur, l’Éternel le délivre, l’Éternel le protège et préserve sa vie : il le rend heureux sur la terre et ne le livre pas au pouvoir de ses ennemis.', :source => 'Psaumes 41.2-3'
    Biblical.create :citation => 'Le malheur poursuit les pécheurs, mais le bonheur récompense les justes.', :source => 'Proverbes 13.21'
    Biblical.create :citation => 'Jusqu’à présent vous n’avez rien demandé en mon nom. Demandez, et vous recevrez, pour que votre joie soit complète.', :source => 'Jean 16.14'
    Biblical.create :citation => 'Goûtez et constatez que l’Éternel est bon ! Oui, heureux l’homme qui trouve son refuge en lui.', :source => 'Psaumes 34.9'
    Biblical.create :citation => 'Au jour du bonheur, jouis du bonheur, et au jour du malheur, réfléchis, car Dieu a fait l’un et l’autre, si bien que l’homme ne peut rien découvrir de ce qui doit lui arriver.', :source => 'Ecclésiaste 7.14'
    Biblical.create :citation => 'Mes frères, quand vous passez par toutes sortes d’épreuves, considérez-vous comme heureux. Car vous le savez : la mise à l’épreuve de votre foi produit l’endurance.', :source => 'Jacques 1.2-3'
    Biblical.create :citation => 'L’un de vous passe-t-il par la souffrance ? Qu’il prie. Un autre est-il dans la joie ? Qu’il chante des cantiques.', :source => 'Jacques 5.13'
    Biblical.create :citation => 'Aussi ai-je conclu qu’il n’y a rien d’autre qui soit bon pour [l’homme] que jouir du bonheur et se donner du bon temps durant sa vie. Car, si quelqu’un peut manger et boire et jouir du bonheur au milieu de son dur labeur, c’est un don de Dieu.', :source => 'Ecclésiaste 3.12-13'
    Biblical.create :citation => 'Heureux ce serviteur que le maître, à son retour, trouvera en train d’agir comme il le lui a demandé.', :source => 'Luc 12.43'
    Biblical.create :citation => 'Heureux l’homme qui tient ferme face à la tentation, car après avoir fait ses preuves, il recevra la couronne du vainqueur : la vie que Dieu a promise à ceux qui l’aiment.', :source => 'Jacques 1.12'
    Biblical.create :citation => 'Heureux ceux qui lavent leurs vêtements. Ils auront le droit de manger du fruit de l’arbre de vie et de franchir les portes de la ville.', :source => 'Apocalypse 22.14'
  end
end
